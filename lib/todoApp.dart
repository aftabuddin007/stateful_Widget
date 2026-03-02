import 'package:flutter/material.dart';

class TodoApp extends StatefulWidget {
  const TodoApp({super.key});

  @override
  State<TodoApp> createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ToDoApp"),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),

        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Enter Task",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                ElevatedButton(onPressed: () {}, child: Text("Add")),
              ],
            ),
            SizedBox(
              height: 200,
              width: 500,
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Card(child: ListTile(title: Text("I have a class ")));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
