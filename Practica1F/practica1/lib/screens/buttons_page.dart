import 'package:flutter/material.dart';

class ButtonsPage extends StatefulWidget {
  const ButtonsPage({super.key});

  @override
  State<ButtonsPage> createState() => _ButtonsPageState();
}

class _ButtonsPageState extends State<ButtonsPage> {
  int _clickCount = 0;
  bool _isButtonDisabled = false;

  void _incrementCounter() {
    setState(() {
      _clickCount++;
    });
  }

  void _disableButton() {
    setState(() {
      _isButtonDisabled = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Center(
        child: Column(
          children: [
            const Text('🎨 Botones', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            const Text('Inician acciones cuando el usuario los presiona.'),
            const SizedBox(height: 24),
            
            // Botón con contador
            ElevatedButton(
              onPressed: _incrementCounter,
              child: Text('Púlsame ($_clickCount)'),
            ),
            const SizedBox(height: 16),
            
            // Botón que se desactiva
            ElevatedButton(
              onPressed: _isButtonDisabled ? null : _disableButton,
              child: Text(_isButtonDisabled ? 'Desactivado' : 'Púlsame para desactivar'),
            ),
            const SizedBox(height: 16),

            // ImageButton (en Flutter es un IconButton)
            IconButton(
              icon: const Icon(Icons.star),
              iconSize: 48,
              tooltip: 'Botón con imagen de estrella',
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('¡Te gusta esta estrella!')),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}