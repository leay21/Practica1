import 'package:flutter/material.dart';

class ListsPage extends StatelessWidget {
  const ListsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final items = List<String>.generate(30, (i) => 'Elemento número ${i + 1}');

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 8.0),
          child: Text('📜 Listas (ListView)', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(16.0, 0, 16.0, 16.0),
          child: Text('Muestran conjuntos de datos de manera eficiente.'),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(items[index]),
                leading: const Icon(Icons.label),
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Seleccionaste: ${items[index]}')),
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
