import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class reg extends StatefulWidget {
  const reg({Key? key}) : super(key: key);

  @override
  State<reg> createState() => _regState();
}

class _regState extends State<reg> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Register"),
        ),

        backgroundColor: Colors.teal,
        body: Container(
          padding:EdgeInsets.all(30),
          child: TextFormField(decoration: InputDecoration(labelText: "Enter Your Name",helperText: "Your Name"),
            onChanged: (String value){
              print("Entered name is :${value}");

            },
          ),
        ),


      ),

    );


  }
}
