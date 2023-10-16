import 'package:education_app/profile.dart';
import 'package:education_app/setting.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'courses.dart';
import 'login.dart';

class drawer extends StatefulWidget {
  const drawer({Key? key}) : super(key: key);

  @override
  State<drawer> createState() => _drawerState();
}

class _drawerState extends State<drawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(

        appBar:AppBar(

        centerTitle: true,
        title: Container(
        height: 40,
        width: 200,
        color:Colors. white12,
        child: Container(
        decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),color: Colors.white,

    ),
    child: Padding(
    padding: const EdgeInsets.only(left: 8,right: 8,bottom: 1),
    child: TextField(
    decoration: InputDecoration(contentPadding: EdgeInsets.only(left: 5,bottom: 0),
    hintText: "Search",icon: Icon(Icons.search)),
    ),
    ),

    ),),

    //elevation: 5,
    backgroundColor: Colors.transparent,
    shadowColor: Colors.white,
    ),
    drawer: Drawer(backgroundColor: Colors.redAccent,width: 300,child: ListView(
    padding: EdgeInsets.zero,
    children: <Widget> [
    DrawerHeader(

    decoration: BoxDecoration(
    color: Colors.blue,
    ),
    child:
    CircleAvatar(
    backgroundImage: AssetImage("assets/images/crseavtr.png"),
    )
    ),

    ListTile(
    leading: Icon(Icons.login),
    title: Text("Log In"),
    onTap: (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>login()));
    },
    ),
    ListTile(
    leading: Icon(Icons.home),
    title: Text("Home"),
    onTap: (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>courses()));
    },
    ),
    ListTile(
    leading: Icon(Icons.account_circle),
    title: Text("Profile"),
    onTap: (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>profile()));
    },
    ),
    ListTile(
    leading: Icon(Icons.settings),
    title: Text("Settings"),
    onTap: (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>setting()));
    },
    ),
    ListTile(
    leading: Icon(Icons.help),
    title: Text("Help"),
    ),
    ListTile(
    leading: Icon(Icons.logout),
    title: Text("Log Out"),
    onTap: (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>login()));
    },
    ),

    ],
    ),
    ),
        ),
    );
  }
}
