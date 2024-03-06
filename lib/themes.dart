import 'package:flutter/material.dart';
import 'main.dart';

class ThemesExample extends StatelessWidget {
  const ThemesExample({super.key});

  @override
  Widget build(BuildContext context) {
    // Define o tema global do aplicativo
    return MaterialApp(
      title: 'Themes Example',
      theme: ThemeData(
        // Cor primária do tema
        primarySwatch: Colors.blue,
        // Estilo de texto para títulos
        textTheme: const TextTheme(
          displayLarge: TextStyle(
              fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.blue),
          bodyLarge: TextStyle(
              fontSize: 14.0, fontFamily: 'Hind', color: Colors.black),
        ),
        // Configuração de botão elevado
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue, // Cor de fundo
            foregroundColor: Colors.white, // Cor do texto
          ),
        ),
      ),
      routes: {
        '/main': (context) => const FlutterExamples(),
      },
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    // Usa o tema global definido
    return Scaffold(
      appBar: AppBar(
        title: const Text('Themes Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Main Theme Style Text',
              style: Theme.of(context).textTheme.displayLarge,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Theme Style Button'),
            ),
            const SizedBox(
              height: 20,
            ),
            // Exemplo de sobrescrita de tema para um widget específico
            Theme(
              data: Theme.of(context).copyWith(
                elevatedButtonTheme: ElevatedButtonThemeData(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(
                        255, 255, 226, 99), // Cor de fundo sobrescrita
                  ),
                ),
              ),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/main');
                },
                child: Text(
                  'Back',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
