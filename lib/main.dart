import 'package:flutter/material.dart';
import 'card.dart';
import 'buttons.dart';
import 'datatable.dart';
import 'drawer.dart';
import 'stack.dart';
import 'themes.dart';
import 'form.dart';
import 'gridview.dart';
import 'listview.dart';

void main() {
  runApp(const FlutterExamples());
}

class FlutterExamples extends StatelessWidget {
  const FlutterExamples({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => const HomeScreen(),
        '/card': (context) => const CardExample(),
        '/buttons': (context) => const ButtonsExample(),
        '/datatable': (context) => const DataTableExample(),
        '/gridview': (context) => const GridViewExample(),
        '/listview': (context) => const ListViewExample(),
        '/drawer': (context) => const DrawerExample(),
        '/stack': (context) => const StackExample(),
        '/themes': (context) => const ThemesExample(),
        '/form': (context) => const FormExample(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Examples'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/card');
              },
              child: const Text('Card'),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/buttons');
              },
              child: const Text('Buttons'),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/datatable');
              },
              child: const Text('DataTable'),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/listview');
              },
              child: const Text('ListView'),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/gridview');
              },
              child: const Text('GridView'),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/drawer');
              },
              child: const Text('Drawer'),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/stack');
              },
              child: const Text('Stack'),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/themes');
              },
              child: const Text('Themes'),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/form');
              },
              child: const Text('Form'),
            ),
          ],
        ),
      ),
    );
  }
}
