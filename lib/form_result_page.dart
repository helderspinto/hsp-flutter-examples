import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final String textValue;
  final bool isChecked;
  final String selectedRadio;
  final bool isSwitched;

  const ResultPage({
    super.key,
    required this.textValue,
    required this.isChecked,
    required this.selectedRadio,
    required this.isSwitched,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Result Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Name: $textValue', style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 10),
            Text('Accept terms: ${isChecked ? "Yes" : "No"}',
                style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 10),
            Text('Selected option: $selectedRadio',
                style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 10),
            Text('Night mode: ${isSwitched ? "Yes" : "no"}',
                style: const TextStyle(fontSize: 16)),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/main');
              },
              child: const Text('Back'),
            ),
          ],
        ),
      ),
    );
  }
}
