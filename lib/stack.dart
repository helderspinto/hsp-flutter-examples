import 'package:flutter/material.dart';

class StackExample extends StatefulWidget {
  const StackExample({super.key});

  @override
  State<StackExample> createState() => _TestesState();
}

class _TestesState extends State<StackExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stack Example"),
      ),
      body: Center(
        // Stack para sobrepor widgets
        child: Stack(
          alignment: Alignment.center,
          children: [
            // Base Widget
            Container(
              width: 300,
              height: 300,
              color: Colors.blue,
            ),
            // Stacked Widget
            const Positioned(
              bottom: 50,
              child: Text(
                'Overlapping text',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            // Other widget without Positioned (centered)
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Back'),
            ),
          ],
        ),
      ),
    );
  }
}
