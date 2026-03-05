import 'package:flutter/material.dart';

class MyTabe extends StatefulWidget {
  const MyTabe({super.key});

  @override
  State<MyTabe> createState() => _MyTabeState();
}

class _MyTabeState extends State<MyTabe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer Tab"),
        backgroundColor: Colors.cyan,
        foregroundColor: Colors.pinkAccent,
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(children: [DrawerHeader(child: Text("Menu"))]),
      ),
    );
  }
}
