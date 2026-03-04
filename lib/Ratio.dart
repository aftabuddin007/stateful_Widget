import 'package:flutter/material.dart';

class Ratio extends StatefulWidget {
  const Ratio({super.key});

  @override
  State<Ratio> createState() => _RatioState();
}

class _RatioState extends State<Ratio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Aspect Ratio"),
        backgroundColor: const Color.fromARGB(255, 94, 58, 179),
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 16 / 9,
              child: Container(color: Colors.deepOrange),
            ),
            AspectRatio(
              aspectRatio: 9 / 16,
              child: Container(color: const Color.fromARGB(255, 57, 7, 7)),
            ),
          ],
        ),
      ),
    );
  }
}
