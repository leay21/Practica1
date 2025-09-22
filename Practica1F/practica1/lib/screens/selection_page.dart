import 'package:flutter/material.dart';

class SelectionPage extends StatefulWidget {
  const SelectionPage({super.key});

  @override
  State<SelectionPage> createState() => _SelectionPageState();
}

class _SelectionPageState extends State<SelectionPage> {
  bool _termsAccepted = false;
  int? _radioValue = 1;
  bool _switchValue = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16.0),
      children: [
        const Text('💡 Elementos de Selección', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        const SizedBox(height: 8),
        const Text('Permiten al usuario elegir una o varias opciones.'),
        const SizedBox(height: 24),

        // Términos y Condiciones con Checkbox
        Container(
          padding: const EdgeInsets.all(8.0),
          height: 100,
          color: Colors.grey[200],
          child: const SingleChildScrollView(
            child: Text(
              "Aquí iría un texto largo simulando los términos y condiciones de servicio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."),
          ),
        ),
        CheckboxListTile(
          title: const Text('He leído y acepto los términos'),
          value: _termsAccepted,
          onChanged: (bool? value) {
            setState(() {
              _termsAccepted = value ?? false;
            });
          },
          controlAffinity: ListTileControlAffinity.leading, // Checkbox a la izquierda
        ),
        const Divider(height: 24),

        // RadioButtons
        const Text('Elija alguna de las opciones:'),
        RadioListTile<int>(
          title: const Text('Opción A'),
          value: 1,
          groupValue: _radioValue,
          onChanged: (int? value) {
            setState(() {
              _radioValue = value;
            });
          },
        ),
        RadioListTile<int>(
          title: const Text('Opción B'),
          value: 2,
          groupValue: _radioValue,
          onChanged: (int? value) {
            setState(() {
              _radioValue = value;
            });
          },
        ),
        const Divider(height: 24),
        
        // Switch
        SwitchListTile(
          title: const Text('Activar notificaciones'),
          value: _switchValue,
          onChanged: (bool value) {
            setState(() {
              _switchValue = value;
            });
          },
        ),
      ],
    );
  }
}