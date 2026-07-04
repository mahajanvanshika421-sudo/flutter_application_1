import 'package:flutter/material.dart';

class ListBuilder extends StatefulWidget {
  const ListBuilder({super.key});

  @override
  State<ListBuilder> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ListBuilder> {
  
  List<String>nameList=[
    "Rhaul",
    "Vanshu",
    "Sunny",
    "Sidhu",
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView Builder"),
      ),
      body:ListView.builder(
        itemCount: nameList.length,
        itemBuilder:(context,index){
          return Card(
            margin: EdgeInsets.all(5),
          child: Padding(
            padding:EdgeInsets.all(15),
            child: Text(nameList[index]), 
            ),
          );
        },
      ),        
    );
  }
}