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

            FractionallySizedBox(
              child: ElevatedButton(onPressed: (){}, child: Text("Submit")),
            ),





            Row(
              children: [
                Flexible(
                  flex: 3,
                  child: Container(height: 100, color: Colors.green),
                ),
                Flexible(   
                  flex: 6,
                  child: Container(
                    height: 100,
                    color: const Color.fromARGB(255, 142, 38, 93),
                  ),
                ),
              ],
            ),

            Container(height: 100, color: Colors.amberAccent),
            Container(height: 100, color: Color.fromARGB(255, 18, 18, 141)),

            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Person1"),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Person1"),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Person1"),
                  ),
                ),
              ],
            ),

            AspectRatio(
              aspectRatio: 16 / 9,
              child: Container(color: Colors.deepOrange),
            ),
            AspectRatio(
              aspectRatio: 9 / 16,
              child: Container(color: const Color.fromARGB(255, 57, 7, 7)),
            ),
            AspectRatio(
              aspectRatio: 4 / 3,
              child: Container(color: const Color.fromARGB(255, 7, 138, 70)),
            ),
            AspectRatio(
              aspectRatio: 16 / 10,
              child: Container(color: const Color.fromARGB(255, 87, 89, 216)),
            ),
          ],
        ),
      ),
    );
  }
}
