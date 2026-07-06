import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen  ({super.key});

  @override
  State<HomeScreen > createState() => _MyWidgetState();
}

class _MyWidgetState extends State<HomeScreen > {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text("Home Screen"),
      backgroundColor: Colors.deepPurple,
    ),
    body: Center(
      child: Text(
        "Home Screen",
        style: TextStyle(fontSize: 22),
      ),
    ),
    bottomNavigationBar: BottomNavigationBar(
      items:[
        BottomNavigationBarItem(
          icon:Icon(Icons.home),
          label: "Home", 
          ),
          BottomNavigationBarItem(
            icon:Icon(Icons.settings),
            label: "Setting", 
            ),
            BottomNavigationBarItem(
              icon:Icon(Icons.person),
              label: "Profile", 
              ),
      ],
      ),
    );
  }
}