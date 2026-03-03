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
    return Scaffold(
      appBar: AppBar(
        title: Text("media query"),
        centerTitle: true,
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              width: screenSize.width * 0.5,
              height: screenSize.height * 0.30,
              color: Colors.redAccent,
            ),
          ),
        ],
      ),
    );
  }
}
