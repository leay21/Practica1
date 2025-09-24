import 'package:flutter/material.dart';
import 'package:practica1/screens/buttons_page.dart';
import 'package:practica1/screens/info_elements_page.dart';
import 'package:practica1/screens/lists_page.dart';
import 'package:practica1/screens/selection_page.dart';
import 'package:practica1/screens/text_fields_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter UI Guide',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // Paleta de colores principal
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.green,
          primary: const Color(0xFF006D39),
          secondary: const Color(0xFF4F6353),
          background: const Color(0xFFFBFDF7),
          onSurface: const Color(0xFF1A1C1A),
        ),
        // Usar Material 3
        useMaterial3: true,
      ),
      home: const MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  String _textFromTextFieldsPage = ""; // Para pasar datos entre fragments

  // Lista de las páginas que se mostrarán
  late final List<Widget> _pages;

  @override
  void initState() {
    super.initState();
    _pages = [
      TextFieldsPage(onTextChanged: (value) {
        setState(() {
          _textFromTextFieldsPage = value;
        });
      }),
      const ButtonsPage(),
      const SelectionPage(),
      const ListsPage(),
      InfoElementsPage(
        // Pasa el texto actual al fragment de información
        initialText: _textFromTextFieldsPage,
      ),
    ];
  }
  
  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Actualiza la página de información con el texto más reciente
    _pages[4] = InfoElementsPage(initialText: _textFromTextFieldsPage);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Práctica 1'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Theme.of(context).colorScheme.surface,
        selectedItemColor: Theme.of(context).colorScheme.primary,
        unselectedItemColor: Theme.of(context).colorScheme.onSurface.withOpacity(0.6),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.edit),
            label: 'Text Fields',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.touch_app),
            label: 'Botones',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.check_box),
            label: 'Selección',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Listas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Info',
          ),
        ],
      ),
    );
  }
}
