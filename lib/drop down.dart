import 'package:flutter/material.dart';

class DropDown extends StatefulWidget {
  const DropDown({super.key});

  @override
  State<DropDown> createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  List<String>gender=["Male","Female","Other"];
  String?selectedValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text("Gender DropDown"),
backgroundColor: Colors.red,
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          Padding(
            padding: EdgeInsets.all(8),
            child:DropdownMenu<String>(
           width: double.infinity, 
           label:Text("Select Gender"),
           hintText: "Select Gender",
           initialSelection: selectedValue,
           onSelected: (value){
            selectedValue=value;
           }  ,
           dropdownMenuEntries: gender.map((item){
            return DropdownMenuEntry(value: item, label: item);
              }).toList()
            )
          )
        ]
      )
    );
       }
  }
