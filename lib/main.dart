import 'package:flutter/material.dart';
import 'package:stateful_widget1/widget/CityCard.dart';

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
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CityCard(
                    image:
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSimtZyskdR3y0AtCiHyEebU1o7mZQFOA6F0Q&s",
                    city: "Cat",
                  ),
                  SizedBox(width: 10),

                  CityCard(
                    image:
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZO8tyDS6dinqoUZmnZO2kyzpvdd7irfh5EA&s",
                    city: "Cow",
                  ),
                  SizedBox(width: 10),

                  CityCard(
                    image:
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTxjF2NAE5TJX1VjNAfNEvMWAMK9R-rjz98EA&s",
                    city: "Goat",
                  ),
                  SizedBox(width: 10),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
