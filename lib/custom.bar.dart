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
        title: Text("Custom Bottom Bar"),
      ),
      body: Center(
        child: Text(
          "Home Screen",
          style: TextStyle(fontSize: 22),
        ),
      ),
      bottomNavigationBar: Padding(
        padding:EdgeInsets.all(20),
        child: Container(
          height: 70,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 5,
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.home,color: Colors.red),
              Icon(Icons.favorite),
              Icon(Icons.person),
            ],
          ),
        ), 
        ),
    );
  }
}