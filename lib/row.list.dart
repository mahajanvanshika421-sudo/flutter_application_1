import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ROW LIST"),
        backgroundColor: Colors.amber,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Text("Riya"),
            SizedBox(width: 10),
            Text("Vanshika"),
            SizedBox(width: 10),
            Text("Bipasha"),
            SizedBox(width: 10),
            Text("Riya"),
            SizedBox(width: 10),
            Text("Vanshika"),
            SizedBox(width: 10),
          ],
        ),
      ),
    );
  }
}