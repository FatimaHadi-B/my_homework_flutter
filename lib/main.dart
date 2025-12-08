import 'package:flutter/material.dart';

void main() {
  runApp(const SebhaApp());
}

class SebhaApp extends StatelessWidget {
  const SebhaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SebhaPage(),
      theme: ThemeData(
        useMaterial3: true,
        primaryColor: const Color(0xFF1565C0), // أزرق غامق
      ),
    );
  }
}

class SebhaPage extends StatefulWidget {
  const SebhaPage({super.key});

  @override
  State<SebhaPage> createState() => _SebhaPageState();
}

class _SebhaPageState extends State<SebhaPage> {
  int countA = 0;
  int countB = 0;
  int countC = 0;

  void resetAll() {
    setState(() {
      countA = 0;
      countB = 0;
      countC = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE8F1FF), // خلفية أزرق فاتح جداً
      appBar: AppBar(
        backgroundColor: const Color(0xFF0D47A1), // أزرق داكن
        centerTitle: true,
        title: const Text(
          "المسبحة",
          style: TextStyle(
            color: Colors.white,
            fontSize: 38,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildCounter("سبحان الله", countA, () {
              setState(() => countA++);
            }),
            buildCounter("الحمد لله", countB, () {
              setState(() => countB++);
            }),
            buildCounter("الله أكبر", countC, () {
              setState(() => countC++);
            }),
            ElevatedButton(
              onPressed: resetAll,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF1976D2), // زر تصفير أزرق
                minimumSize: const Size(150, 55),
              ),
              child: const Text(
                "تصفير",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildCounter(String text, int value, VoidCallback onTap) {
    return Column(
      children: [
        Text(
          text,
          style: const TextStyle(
            fontSize: 36,
            color: Color(0xFF0D47A1), // لون العناوين أزرق غامق
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 6),
        ElevatedButton(
          onPressed: onTap,
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF1E88E5), // أزرق متوسط
            minimumSize: const Size(250, 60),
          ),
          child: Text(
            "$value",
            style: const TextStyle(
              fontSize: 34,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
