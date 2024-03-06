import 'package:flutter/material.dart';
import 'form_result_page.dart';
import 'main.dart';

class FormExample extends StatelessWidget {
  const FormExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/main': (context) => const FlutterExamples(),
      },
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Form Example'),
        ),
        body: const MyForm(),
      ),
    );
  }
}

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final TextEditingController _textController = TextEditingController();
  bool isChecked = false;
  String? selectedRadio = 'Option 1';
  bool isSwitched = false;

  final _formKey = GlobalKey<FormState>(); // Form Global Key

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            controller: _textController,
            decoration: const InputDecoration(
              labelText: 'Enter your name',
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Enter your name';
              }
              return null;
            },
          ),
          CheckboxListTile(
            title: const Text('Accept Terms'),
            value: isChecked,
            onChanged: (bool? value) {
              setState(() {
                isChecked = value!;
              });
            },
          ),
          RadioListTile<String>(
            title: const Text('Option 1'),
            value: 'Option 1',
            groupValue: selectedRadio,
            onChanged: (String? value) {
              setState(() {
                selectedRadio = value;
              });
            },
          ),
          RadioListTile<String>(
            title: const Text('Option 2'),
            value: 'Option 2',
            groupValue: selectedRadio,
            onChanged: (String? value) {
              setState(() {
                selectedRadio = value;
              });
            },
          ),
          SwitchListTile(
            title: const Text('Night mode'),
            value: isSwitched,
            onChanged: (bool value) {
              setState(() {
                isSwitched = value;
              });
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: () {
                // Form validation
                if (!isChecked) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content:
                          Text('You need to accept the terms to continue.'),
                    ),
                  );
                }
                // Form validation
                else if (_formKey.currentState!.validate()) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResultPage(
                        textValue: _textController.text,
                        isChecked: isChecked,
                        selectedRadio: selectedRadio!,
                        isSwitched: isSwitched,
                      ),
                    ),
                  );
                }
              },
              child: const Text('Submit'),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/main');
            },
            child: const Text('Back'),
          ),
        ],
      ),
    );
  }
}
