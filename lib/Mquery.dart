import 'package:flutter/material.dart';

class Mquery extends StatefulWidget {
  const Mquery({super.key});

  @override
  State<Mquery> createState() => _MqueryState();
}

class _MqueryState extends State<Mquery> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double widthSize = MediaQuery.of(context).size.width;
    double fontSize = screenSize.width > 600 ? 32 : 18;
    return Scaffold(
      appBar: AppBar(
        title: Text("media query"),
        centerTitle: true,
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: Container(
        width: screenSize.width,
        height: screenSize.height,
        color: const Color.fromARGB(255, 23, 156, 114),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                width: screenSize.width * 0.5,
                height: screenSize.height * 0.30,
                color: Colors.redAccent,
              ),
            ),
            Text(
              "This is media query text",
              style: TextStyle(fontSize: fontSize),
            ),
          ],
        ),
      ),
    );
  }
}
