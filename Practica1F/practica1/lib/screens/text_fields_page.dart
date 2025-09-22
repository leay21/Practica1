import 'package:flutter/material.dart';

class TextFieldsPage extends StatefulWidget {
  // Callback para enviar texto al widget padre (MainPage)
  final Function(String) onTextChanged;

  const TextFieldsPage({super.key, required this.onTextChanged});

  @override
  State<TextFieldsPage> createState() => _TextFieldsPageState();
}

class _TextFieldsPageState extends State<TextFieldsPage> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16.0),
      children: [
        const Text('📝 TextFields (TextField)', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        const SizedBox(height: 8),
        const Text('Permiten al usuario introducir y editar texto.'),
        const SizedBox(height: 24),
        
        TextField(
          controller: _controller,
          decoration: const InputDecoration(
            labelText: 'Escribe algo aquí para enviar',
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 16),
        ElevatedButton(
          onPressed: () {
            widget.onTextChanged(_controller.text);
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Texto enviado a la pestaña Info!')),
            );
          },
          child: const Text('Enviar a Fragmento Info'),
        ),
        
        const Divider(height: 48),

        const Text('Ejemplo: Formulario de Login', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        const SizedBox(height: 16),
        const TextField(
          decoration: InputDecoration(
            labelText: 'Correo electrónico',
            border: OutlineInputBorder(),
            prefixIcon: Icon(Icons.email),
          ),
          keyboardType: TextInputType.emailAddress,
        ),
        const SizedBox(height: 16),
        const TextField(
          obscureText: true,
          decoration: InputDecoration(
            labelText: 'Contraseña',
            border: OutlineInputBorder(),
            prefixIcon: Icon(Icons.lock),
          ),
        ),
      ],
    );
  }
}