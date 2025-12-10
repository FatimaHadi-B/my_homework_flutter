import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  final String data;

  const SecondPage({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("الصفحة الثانية"),
      ),
      body: Center(
        child: Text(
          "النص المستلم: $data",
          style: const TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
