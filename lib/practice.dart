import 'package:flutter/material.dart';

class ListBuild extends StatefulWidget {
  const ListBuild({super.key});

  @override
  State<ListBuild> createState() => _ListBuildState();
}

class _ListBuildState extends State<ListBuild> {

List<String> nameList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView Builder"),
      ),
      body:Stack(
        children: [
          ListView. builder(
            itemCount:nameList.length,
            itemBuilder:(context,index){
              return Card(
                child:Column (
                  children: [
                    Padding(
                      padding:EdgeInsets.all(10),
                      child: Text(nameList[index]), 
                      ),
                  ],)
              )
            }
          )
        ],
      )
    );
  }
}