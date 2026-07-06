import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ListBuild extends StatefulWidget {
  const ListBuild({super.key});

  @override
  State<ListBuild> createState() => _ListBuildState();
}

class _ListBuildState extends State<ListBuild> {

List<String> nameList = [
  "Rahul",
  "Vanshu",
  "Sunny",

];
TextEditingController
nameController=TextEditingController();

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
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed:(){ 
                            nameController.text=nameList[index];
                            updateDialog(context,index);
                            },
                            child: Text("Update"),
                            ),
                            ElevatedButton(
                              onPressed:(){
                                setState(){
                                  nameList.removeAt(index);
                                }
                              },
                              child:Text("Delete"),
                              ),
                        ],
                      ),
                  ],
        
        ),
              );
            }
          ),
          Positioned(
            bottom: 10,
right: 10,
         child:FloatingActionButton(
          onPressed:(){
            nameController.clear();
            addDialog(context);

          } ,
          child:Icon(Icons.add),

          ),
          ),
        ],
      )
    );
  }
  void addDialog(BuildContext context){
    showDialog(
      context: context,
      builder: (context){
        return Dialog(
          child:Padding(
            padding:EdgeInsets.all(10) ,
            child:Column(
              mainAxisSize:MainAxisSize. min,
              children: [
                Text(
                  "Add Name",
                style:TextStyle(fontSize:20),
            ),
            SizedBox(height:10),
            TextField(
              controller:nameController,
              decoration:InputDecoration(
                hintText:"Enter Your Name",
                border:OutlineInputBorder(),
              ),
            ),
            SizedBox(height:10),
            ElevatedButton(
              onPressed:(){
                if(nameController.text.isEmpty){
                  Fluttertoast.showToast(
                    msg:"Enter Your Name", 
                    
                    );
                }else{
                  setState(){
                    nameList.add(nameController.text);
                    nameController.clear();
                  }
                  Navigator.pop(context);
                }
              } ,
              child:Text("Save Name"),
              ),
              ],
            ),
            ),
        );
      },
    );
  }
  void updateDialog(BuildContext context,int index){
    showDialog(
      context:context,
      builder:(context){
        return Dialog(
          child:Padding(
            padding:EdgeInsets.all(10),
            child:Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "UpdATE Name",
                style:TextStyle(fontSize:20),
            ),
            SizedBox(height: 10),
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                hintText: "eNTER yOUR Name",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed:(){
                if(nameController.text.isEmpty){
                  Fluttertoast.showToast(
                    msg:"eNTER yOUR Name", 
                    );

                }else{
                  setState(() {
                    nameList[index]=nameController.text;
                    nameController.clear();
               
               
                                    });
                                    Navigator.pop(context);
                }
              } ,
              child:Text("Update Name"),
              ),
            

            ],
            ),
            ),
        );
      },
    );       
  }
}

