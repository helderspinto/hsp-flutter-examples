import 'package:flutter/material.dart';

class ButtonsExample extends StatefulWidget {
  const ButtonsExample({super.key});

  @override
  State<ButtonsExample> createState() => _MyAppState();
}

class _MyAppState extends State<ButtonsExample> {
  // Variable to hold the selected value from the dropdown
  String? _selectedValue;

  // List of items for the DropdownButton
  final List<String> _dropdownItems = ['Option 1', 'Option 2', 'Option 3'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Buttons Example'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // TextButton example
              TextButton(
                onPressed: () {
                  // Action to perform on button press
                },
                child: const Text('TextButton'),
              ),
              const SizedBox(height: 10),
              // ElevatedButton example
              IconButton(
                icon: const Icon(Icons.star), // Define the icon you want
                color: Colors.yellow, // Optional: Set the icon color
                iconSize: 48.0, // Optional: Set the icon size
                onPressed: () {
                  // Action to perform on button press
                  //print('IconButton pressed');
                },
              ),
              const SizedBox(height: 10),
              // OutlinedButton example
              OutlinedButton(
                onPressed: () {
                  // Action to perform on button press
                },
                child: const Text('OutlinedButton'),
              ),
              const SizedBox(height: 10),
              // DropdownButton example
              DropdownButton<String>(
                hint: const Text('Select Option'),
                value: _selectedValue,
                onChanged: (newValue) {
                  // Action to perform on dropdown item selection
                  setState(() {
                    _selectedValue = newValue;
                  });
                },
                items: _dropdownItems
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Back'),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.star),
              label: 'Favourits',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
        ),
      ),
    );
  }
}
