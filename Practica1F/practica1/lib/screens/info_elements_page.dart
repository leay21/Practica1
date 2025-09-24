import 'package:flutter/material.dart';

class InfoElementsPage extends StatefulWidget {
  final String initialText;

  const InfoElementsPage({super.key, required this.initialText});

  @override
  State<InfoElementsPage> createState() => _InfoElementsPageState();
}

class _InfoElementsPageState extends State<InfoElementsPage> with SingleTickerProviderStateMixin {
  late AnimationController _progressController;
  late Animation<double> _progressAnimation;
  
  // Variable de estado para la calificación
  double _rating = 0.0;

  @override
  void initState() {
    super.initState();
    _progressController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _progressAnimation = Tween<double>(begin: 0, end: 1).animate(_progressController)
      ..addListener(() {
        setState(() {});
      });
  }

  void _startProgress() {
    _progressController.forward(from: 0);
  }

  void _resetProgress() {
    _progressController.reset();
  }

  @override
  void dispose() {
    _progressController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Center(
        child: Column(
          children: [
            const Text('⚡ Elementos de Información', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            const Text('Muestran información estática o de progreso.'),
            const SizedBox(height: 24),
            
            Text(
              widget.initialText.isEmpty
                  ? 'Escribe algo en la primera pestaña para verlo aquí.'
                  : 'Texto recibido: ${widget.initialText}',
              style: const TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            const Divider(height: 48),

            const Text('Barra de Progreso Animada', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 16),
            LinearProgressIndicator(
              value: _progressAnimation.value,
              minHeight: 10,
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: _startProgress, child: const Text('Iniciar')),
                const SizedBox(width: 16),
                OutlinedButton(onPressed: _resetProgress, child: const Text('Reiniciar')),
              ],
            ),
            const Divider(height: 48),
            
            const Text('Califica esta app (RatingBar)', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 16),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(5, (index) {
                return IconButton(
                  icon: Icon(
                    // Si el índice es menor que la calificación, la estrella está llena, si no, vacía.
                    index < _rating ? Icons.star : Icons.star_border,
                  ),
                  color: Colors.amber,
                  iconSize: 40,
                  onPressed: () {
                    // Al presionar, actualizamos el estado con el nuevo valor.
                    setState(() {
                      _rating = index + 1.0;
                    });
                    // Mostramos un mensaje (opcional)
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Calificación: $_rating estrellas')),
                    );
                  },
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
