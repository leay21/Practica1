import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Usamos un Scaffold para darle la estructura básica a la pantalla
    return Scaffold(
      // La AppBar es la barra superior de la aplicación
      appBar: AppBar(
        title: const Text('Segunda Pantalla 🚀'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
      ),
      // El cuerpo de la pantalla
      body: const Center(
        child: Text(
          'Bienvenido a la segunda pantalla 👋',
          style: TextStyle(fontSize: 24),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}