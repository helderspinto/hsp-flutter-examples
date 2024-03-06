import 'package:flutter/material.dart';

class DrawerExample extends StatelessWidget {
  const DrawerExample({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Drawer Example'),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text('Header'),
              ),
              ListTile(
                title: const Text('Back'),
                onTap: () {
                  // Code
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Back'),
                onTap: () {
                  // Code
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        body: const Center(
          child: Text('Main'),
        ),
      ),
    );
  }
}
