import 'package:flutter/material.dart';

class ListViewChildren extends StatefulWidget {
  const ListViewChildren({super.key});

  @override
  State<ListViewChildren> createState() => _ListViewChildrenState();
}

class _ListViewChildrenState extends State<ListViewChildren> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView Withy Children"),
      ),
      body:ListView(
        children:[
          ListTile(title: Text("Rahul")),
          ListTile(title: Text("Vanshu")),
          ListTile(title: Text("Sunny")),
          ListTile(title: Text("Sidhu")),
        ],
      ),
    );
  }
}