import 'package:carousel_slider/carousel_slider.dart';
import 'package:education_app/expl2.dart';
import 'package:education_app/python.dart';
import 'package:education_app/web.dart';
import 'package:flutter/material.dart';

import 'andr.dart';
import 'data.dart';
import 'expl1.dart';
import 'expl3.dart';
import 'java.dart';


class courses extends StatefulWidget {
  const courses({Key? key}) : super(key: key);

  @override
  State<courses> createState() => _coursesState();
}

class _coursesState extends State<courses> {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/course.png"),fit: BoxFit.cover),),
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
        drawer: Drawer(backgroundColor: Colors.yellow,width: 200,child: ListView(
          padding: EdgeInsets.zero,
          children:const <Widget> [
            DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text("Menu",style: TextStyle(color: Colors.white,fontSize: 24,),),),

            ListTile(
              leading: Icon(Icons.login),
              title: Text("Log In"),
            ),
        ListTile(
          leading: Icon(Icons.home),
          title: Text("Home"),
        ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text("Profile"),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text("Help"),
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Log Out"),
            ),

          ],
        ),),

//bottomNavigationBar: Cur,


        backgroundColor: Colors.transparent,
        body: ListView(
          children: <Widget>[

            Container(
              alignment: Alignment.topLeft,
              child: Text("Recent Courses",style: TextStyle(
                fontSize: 35,color: Colors.white,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold,
              ),),
            ),
            SizedBox(
              height: 100,
            ),
            CarouselSlider(items:[
              Container(
                // color: Colors.yellow,
                height: 240,
                child: SingleChildScrollView(
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>andr()));
                        },
                        child: Container(

                          margin: EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [
                              Colors.red,
                              Colors.yellow.shade800,

                            ],
                              begin: Alignment.bottomRight, end: Alignment.topLeft,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                            // image: DecorationImage(image: AssetImage("assets/images/img1.png"),
                            // fit: BoxFit.cover,
                          ),
                          child: Container(
                            alignment: Alignment.topLeft,
                            margin: EdgeInsets.only(left: 20),
                            child: Column(
                              children: [Text("12 Sections",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white,),),

                                Container(
                                    alignment: Alignment.topLeft,
                                    margin: EdgeInsets.only(left: 20),
                                    child: Text("Android ",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),)),
                                Image.asset("assets/images/illustration-08.png",width: 280,height: 280,),
                              ],
                            ),
                          ),
                          ),

                        ),
                      
                    ],
                  ),
                ),
              ),
              //Text("Android Development"),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>java()));
                },
                child: Container(
                  width: 280,
                  child: Column(
                    children: [
                      Container(alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(left: 20),
                          child: Text("10 Sections",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color:Colors.white),)),
                      Container(alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(left: 20),
                          child: Text(" Prototyping With Protopie",style: TextStyle( fontSize: 25,fontWeight: FontWeight.bold, color:Colors.white),))
                    ],
                  ),
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(color: Colors.pinkAccent,
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(image: AssetImage("assets/images/java2.png",),
                      fit: BoxFit.cover,),
                  ),
                ),

              ),
              //SizedBox(height: 10,),
              //Text("Java Development",style: TextStyle(color: Colors.white),),

              //Text("java Developer "),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>web()));
                },
                child: Container(
                  child: Column(
                    children: [
                      Container(

                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(left: 15),
                        child: Text("22 Sections",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),),
                      ),
                      Container(alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(left: 20),
                          child: Text(" Build An API With SwiftUI",style: TextStyle( fontSize: 25,fontWeight: FontWeight.bold, color:Colors.white),),

                      )
                    ],
                  ),
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(color: Colors.pinkAccent,
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(image: AssetImage("assets/images/illustration-06.png"),

                      fit: BoxFit.cover,),
                  ),
                ),
              ),
              //Text("Java Developer"),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>data()));
                },
                child: Container(

                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(image: AssetImage("assets/images/data.png"),
                      fit: BoxFit.cover,),
                  ),
                ),
              ),
             // Text("Data Science"),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>python()));
                },
                child: Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(image: AssetImage("assets/images/python.png"))
                  ),
                ),
              ),
             Column(
               children: [
                 Container(
                   child: SingleChildScrollView(
                     child: Row(
                       children: [
                      //   Text("Android Development",style: TextStyle(color: Colors.red),),
                       ],
                     )
                     ,
                   ),
                 )
               ],
             )
             // Text("Python Developer"),
            ], options: CarouselOptions(
              height: 250.0,
              enlargeCenterPage: true,
              autoPlay: false,
              aspectRatio: 16/9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: false,
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              viewportFraction: 0.8,
            )),
           SizedBox(
             height: 50,
           ),
           Container(
             margin: EdgeInsets.only(left: 10),
             alignment: Alignment.topLeft,
             child: Column(
               children: [
                 Container(

                   child: Container(margin: EdgeInsets.only(left: 10),
                       alignment: Alignment.topLeft,
                       child: Text("Explore courses",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 35),)),
                 ),
                 SizedBox(
                   height: 25,
                 ),

                 Container(
                   child: SingleChildScrollView(scrollDirection: Axis.horizontal,
                     child: Row(
                       children: [
                         GestureDetector(
                           onTap: (){
                             Navigator.push(context, MaterialPageRoute(builder: (context)=>expl1()));
                           },
                           child: Container(
                             child: Image(image: AssetImage("assets/images/illustration-05.png",),),
                             width: 200,
                             height: 150,
                             decoration: BoxDecoration(
                               gradient: LinearGradient(colors: [
                                 Colors.green,
                                 Colors.orange.shade800,

                               ],
                                 begin: Alignment.bottomRight, end: Alignment.topLeft,
                               ),
                               borderRadius: BorderRadius.circular(15),
                             ),

                           ),

                         ),
                         SizedBox(
                           width: 30,

                         ),

                         GestureDetector(
                           onTap: (){
                             Navigator.push(context, MaterialPageRoute(builder: (context)=>expl2()));
                           },
                           child: Container( child: Image(image: AssetImage("assets/images/illustration-11.png"),),
                             width: 200,
                             height: 150,
                             decoration: BoxDecoration(
                               gradient: LinearGradient(colors: [
                                 Colors.pinkAccent,
                                 Colors.blue.shade800,

                               ],
                                 begin: Alignment.bottomRight, end: Alignment.topLeft,
                               ),
                               borderRadius: BorderRadius.circular(15),
                             ),
                           ),
                         ),
                         SizedBox(
                           width: 30,
                         ),
                         GestureDetector(
                           onTap: (){
                             Navigator.push(context, MaterialPageRoute(builder: (context)=>expl3()));
                           },
                           child: Container(
                             child: Image(image: AssetImage("assets/images/illustration-04.png"),),
                             width: 200,
                             height: 150,
                             decoration: BoxDecoration(
                               gradient: LinearGradient(colors: [
                                 Colors.red,
                                 Colors.yellow.shade800,

                               ],
                                 begin: Alignment.bottomRight, end: Alignment.topLeft,
                               ),
                               borderRadius: BorderRadius.circular(10),
                             ),
                           ),
                         )
                       ],
                     ),
                   ),
                 )
               ],
             ),
           ),


           // Image(image: AssetImage("assets/images/pic.png"),fit: BoxFit.cover,)
          ],
        ),

      ),
    );}
}