import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Container(


        //padding: EdgeInsets.only(right: 20),
        child: CircleAvatar(

          backgroundImage: AssetImage("assets/images/pro.png",),radius: 70,


        ),


        padding: EdgeInsets.only(left: 125),
        margin: EdgeInsets.fromLTRB(0, 90, 1, 0),
        //color: Colors.white,

      ),
    );
  }
}
