import 'package:flutter/material.dart';
import 'second_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController firstController = TextEditingController();
  final TextEditingController secondController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("تكليف TextFields"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: firstController,
              decoration: const InputDecoration(
                labelText: "الحقل الأول",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: secondController,
              readOnly: true,
              decoration: const InputDecoration(
                labelText: "الحقل الثاني",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  secondController.text = firstController.text;
                });
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              child: const Text("انسخ النص إلى الحقل الثاني"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final text = firstController.text;
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondPage(data: text),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              child: const Text("انتقال لصفحة أخرى + تمرير البيانات"),
            ),
          ],
        ),
      ),
    );
  }
}
