import 'package:flutter/material.dart';
import 'package:js/js.dart';
import 'package:js_testing/js_helper.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: TextButton(
            onPressed: () {
              testJS(
                allowInterop(
                  (text) async {
                    Future.delayed(const Duration(seconds: 1));
                    return text;
                  },
                ),
              );
            },
            child: const Text('Test'),
          ),
        ),
      ),
    );
  }
}
