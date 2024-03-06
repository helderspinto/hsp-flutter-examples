import 'package:flutter/material.dart';
import 'main.dart';

class GridViewExample extends StatelessWidget {
  const GridViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/main': (context) => const FlutterExamples(),
      },
      home: Scaffold(
        appBar: AppBar(
          title: const Text('GridView Example'),
        ),
        body: GridViewBuilderExample(),
      ),
    );
  }
}

class GridViewBuilderExample extends StatelessWidget {
  GridViewBuilderExample({super.key});
  // Gera uma lista de dados de exemplo
  final List<String> items = List<String>.generate(10, (i) => "Item $i");

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(10),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3, // Número de colunas
        crossAxisSpacing: 10, // Espaçamento horizontal entre os itens
        mainAxisSpacing: 10, // Espaçamento vertical entre os itens
      ),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return GridTile(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.teal[100],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/main');
                },
                child: const Text(
                  "Back", //items[index],
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
