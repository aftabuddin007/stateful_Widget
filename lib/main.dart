import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "Aftab", home: MyHome());
  }
}

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyHome> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateful Class"),
        backgroundColor: Colors.tealAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              count.toString(),
              style: TextStyle(fontSize: 60, color: Colors.deepOrange),
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 180,

                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        count++;
                      });
                      print(count);
                    },
                    child: Text(
                      "+",
                      style: TextStyle(fontSize: 40, color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                SizedBox(
                  width: 180,

                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        count--;
                      });
                      print(count);
                    },
                    child: Text(
                      "-",
                      style: TextStyle(fontSize: 40, color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 50),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
             decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(color: Colors.grey )
              ]
             ),
              height: 200,
              child: Column(
                children: [
                  Image.network(
                    "https://i.ibb.co.com/PsGbnmH3/51z5-It-EXp-BL-AC-UF894-1000-QL80.jpg",
                    height: 200,
                    width: 200,
                  ),
                  Text("This is facebook logo"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
