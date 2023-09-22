import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _text = TextEditingController();
  bool validate = false;
  String? _name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TextField(
              controller: _text,
              decoration: InputDecoration(
                errorText: validate ? null : 'Please enter your name',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  validate = _text.text.isNotEmpty;
                });
              },
              child: Text('Submit'),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Back')),
            // TextField(
            //   onChanged: (values) {
            //     // print(values);
            //     setState(() {
            //       print(_name);
            //     });
            //   },
            // ),
            Text(_text.text ?? 'No name'),
          ],
        ),
      ),
    );
  }
}
