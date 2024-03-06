import 'package:flutter/material.dart';

class ListViewExample extends StatelessWidget {
  const ListViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('ListView Example'),
        ),
        body: Center(
          child: ListView(
            children: [
              const ListTile(
                leading: Icon(Icons.map),
                title: Text('Map'),
              ),
              const ListTile(
                leading: Icon(Icons.photo),
                title: Text('Album'),
              ),
              const ListTile(
                leading: Icon(Icons.phone),
                title: Text('Phone'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Back'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
