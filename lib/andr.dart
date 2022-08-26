//import 'package:education_app/courses.dart';
import 'package:education_app/course_vid.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class andr extends StatefulWidget {
  const andr({Key? key}) : super(key: key);

  get course => null;

  @override
  State<andr> createState() => _andrState();
}

class _andrState extends State<andr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Android Development",style: TextStyle(color: Colors.black),),
      ),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 20.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.5,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                        Colors.red,
                        Colors.blue,
                      ])),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.5,
                    child: SafeArea(
                      child: Padding(
                        padding: EdgeInsets.only(
                          bottom: 20.0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 20.0,
                              ),
                              child: Row(
                                children: [],
                              ),
                            ),
                            SizedBox(
                              height: 28.0,
                            ),
                            Expanded(
                                child: Image(
                              image: AssetImage("assets/images/ill.png"),
                            )),
                          ],
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>course_vid()));
                    },
                    child: Padding(
                      padding: EdgeInsets.only(right: 28.0),
                      child: Container(
                        padding: EdgeInsets.only(
                          top: 12.5,
                          bottom: 13.5,
                          left: 20.5,
                          right: 14.5,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.pinkAccent,
                              blurRadius: 16.0,
                              offset: Offset(0, 4),
                            ),
                          ],
                        ),
                        width: 60.0,
                        height: 60.0,
                        child: Icon(Icons.play_arrow),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 12.0,
                  right: 28.0,
                  left: 28.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Container(
                          child: Padding(
                            padding: EdgeInsets.all(4.0),
                            child: Container(
                              padding: EdgeInsets.all(4.0),
                              child: CircleAvatar(
                                child: Icon(
                                  Icons.people,
                                  color: Colors.white,
                                ),
                                radius: 21.0,
                                backgroundColor: Colors.pinkAccent,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.yellow,
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                            ),
                          ),
                          height: 58.0,
                          width: 58.0,
                          decoration: BoxDecoration(
                            //gradient: widget.course.background,
                            borderRadius: BorderRadius.circular(29.0),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 12.0,
                    ),
                    Column(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "45.7k",
                        ),
                        Text(
                          "Students",
                        ),
                      ],
                    ),

                    Row(
                      children: [
                        Container(
                          child: Padding(
                            padding: EdgeInsets.all(4.0),
                            child: Container(
                              padding: EdgeInsets.all(4.0),
                              child: CircleAvatar(
                                child: Icon(
                                  Icons.favorite,
                                  color: Colors.white,
                                ),
                                radius: 21.0,
                                backgroundColor: Colors.pinkAccent,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.yellow,
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                            ),
                          ),
                          height: 58.0,
                          width: 58.0,
                          decoration: BoxDecoration(
                            //gradient: widget.course.background,
                            borderRadius: BorderRadius.circular(29.0),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 12.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "10.7k",
                        ),
                        Text(
                          "Students",
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(left: 10),
                child: Text("What is Android ?",style: TextStyle(
                  fontWeight: FontWeight.bold,fontSize: 30,
                ),),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(left: 10,bottom: 20),
                child: Text("Android was created by the Open Handset Alliance, "
                    "which is led by Google. The early feedback on developing "
                    "applications for the Android platform was mixed.[23] "
                    "Issues cited include bugs, lack of documentation, inadequate "
                    "QA infrastructure, and no public issue-tracking system.",style: TextStyle(
                  fontSize: 20,
                ),),
              ),
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(left: 10),
                child: Text("What is Flutter ?",style: TextStyle(
                  fontWeight: FontWeight.bold,fontSize: 30,
                ),),
              ),
              Image(image: AssetImage("assets/images/andflutt.png",),),
              Container(
                margin: EdgeInsets.only(left: 10,bottom: 30),
                child: Text("Flutter is a free and open-source"
                    " mobile UI framework created by Google and released "
                    "in May 2017. In a few words, it allows you to create"
                    " a native mobile application with only one codebase. "
                    "This means that you can use one programming language and "
                    "one codebase to create two different apps (for iOS and Android).",style: TextStyle(fontSize: 20),),
              ),
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(left: 15),
                child: Text("Why you should learn Flutter ?",style: TextStyle(
                  fontWeight: FontWeight.bold,fontSize: 30,
                ),),
              ),
              Container(
                margin: EdgeInsets.only(left: 10,bottom: 30),
                child:
                Text("Flutter is a modern framework, and you can feel it!"
                    " It’s way simpler to create mobile applications with it. "
                    "If you have used Java, Swift, or React Native, you'll notice "
                    "how Flutter is different.",style: TextStyle(fontSize: 20),),

              ),

              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(left: 15),
                child: Text("Basics of Widgets in Flutter ",style: TextStyle(
                  fontWeight: FontWeight.bold,fontSize: 30,
                ),),
              ),
              Image(image: AssetImage("assets/images/andwid.png")),
              Container(
                margin: EdgeInsets.only(left: 10,bottom: 30),
                child:
                Text("Widgets are generally defined in three basic types: "
                    "Stateful widgets, Stateless widgets, and Inherited widgets. "
                    "Being the central class hierarchy in the Flutter framework the t"
                    "hree basic types of widgets are used in the construction of every "
                    "Flutter application.[24] Although all the instances of a widget are immutable,"
                    " the Stateful widget allows the interaction between user and application.",style: TextStyle(fontSize: 20),),

              ),
            ],
          ),
        ),
      ),
    );
  }
}
