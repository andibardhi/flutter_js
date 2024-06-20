import 'package:flutter/material.dart';
import 'package:js_testing/js_helper.dart';
import 'dart:js_interop';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  JSPromise<JSString> func(String text) =>
      Future<JSString>.delayed(const Duration(seconds: 1), () {
        return text.toJS;
      }).toJS;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: TextButton(
            onPressed: () {
              testJS(func.toJS).toDart;
            },
            child: const Text('Test'),
          ),
        ),
      ),
    );
  }
}
