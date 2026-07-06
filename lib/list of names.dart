import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
List<String>names=[
  "Bipasha",
  "Vanshika",
  "Riya",
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text("List of Name"),
    ),
    body: ListView.builder(
      itemCount: 30,
      itemBuilder:(context, index) {
        return Text(
          names[index%names.length],
          style: TextStyle(fontSize: 22),
        );
      },
      ),
    );
  }
}