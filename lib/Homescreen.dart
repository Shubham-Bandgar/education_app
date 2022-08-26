import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'courses.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/img.jpeg"),fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        // appBar: AppBar(
        //  title: Text("Educational App"),
        //
        // ),
        drawer: Drawer(backgroundColor: Colors.deepOrange,width: 200,child: ListView(
          padding: EdgeInsets.zero,
          children:  const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                  color: Colors.green
              ),


              child: Text("MenuBar",style: TextStyle(color: Colors.black,fontSize: 24),),),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text("Profile"),
            ),
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text("Notifications"),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text("Help"),
            )
          ],
        ),),
        body: Column(
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Drawer()));
                  },
                  child: Container(),
                ),
                GestureDetector(
                    onTap: (){
                      //  Navigator.push(context, MaterialPageRoute(builder: (context)=>));
                    },
                    child: Container()),
                CircleAvatar(),
              ],
            ),
            Center(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 650,
                    ),
                    Container(
                      child: ElevatedButton(

                        style: ButtonStyle(//alignment: Alignment.bottomCenter,
                          // padding: MaterialStateProperty.all(EdgeInsets.symmetric()),
                            elevation: MaterialStateProperty.all<double>(10),
                            backgroundColor: MaterialStateProperty.all<Color>(Colors.deepOrange),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(45)))

                        ), onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>courses()),);
                      }, child: Text("Explore Courses Here"),
                      ),
                    ),


                  ],
                ),
              ),


            ),
          ],
        ),

      ),
    );
  }
}