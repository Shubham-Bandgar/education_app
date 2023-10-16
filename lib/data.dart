import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'datayt.dart';

class data extends StatefulWidget {
  const data({Key? key}) : super(key: key);

  @override
  State<data> createState() => _dataState();
}

class _dataState extends State<data> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Data Science"),
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
                                    image: AssetImage("assets/images/illustration-06.png"),
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>datayt()));
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
                            "10.7k",
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
                            "21.7k",
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
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 10),
                  child: Text("Data Science",style: TextStyle(
                    fontWeight: FontWeight.bold,fontSize: 30,
                  ),),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.only(left: 10,bottom: 20),
                  child: Text("Data science is the study of the extraction of knowledge from data."
                      " It uses various techniques from many fields, including signal processing,"
                      " mathematics, probability, machine learning, computer programming, statistics, "
                      "data engineering, pattern matching, and data visualization, with the goal of"
                      " extracting useful knowledge from the data. With computer systems able to handle "
                      "more data, big data is an important aspect of data science.",style: TextStyle(
                    fontSize: 20,
                  ),),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 10),
                  child: Text("Why Data Science is Important? ?",style: TextStyle(
                    fontWeight: FontWeight.bold,fontSize: 30,
                  ),),
                ),
                Image(image: AssetImage("assets/images/javacrse.png",),),
                Container(
                  margin: EdgeInsets.only(left: 10,bottom: 30),
                  child: Text("More and more companies are coming to realize the importance of data science, AI, and machine learning. Regardless of industry or size, organizations that wish to remain competitive in the age of big data need to efficiently develop and implement data science capabilities or risk being left behind.",style: TextStyle(fontSize: 20),),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(left: 15),
                  child: Text(" Hello Word Example",style: TextStyle(
                    fontWeight: FontWeight.bold,fontSize: 30,
                  ),),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10,bottom: 30),
                  child:
                  Text("All source files must be named after the public class they contain, "
                      "appending the suffix .java, for example, HelloWorldApp.java."
                      " It must first be compiled into bytecode, using a Java compiler,"
                      " producing a file with the .class suffix (HelloWorldApp.class, in this case). "
                      "Only then can it be executed or launched. The Java source file may only contain "
                      "one public class, but it can contain multiple classes with a non-public access"
                      " modifier and any number of public inner classes. When the source file contains"
                      ""
                      " multiple classes, it is necessary to make one class (introduced by the class keyword) "
                      "public (preceded by the public keyword) and name the source file with that public"
                      " class name.",style: TextStyle(fontSize: 20),),

                ),

                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(left: 15),
                  child: Text("Program ",style: TextStyle(
                    fontWeight: FontWeight.bold,fontSize: 30,
                  ),),
                ),
                Image(image: AssetImage("assets/images/javacrse1.png")),
                Container(
                  margin: EdgeInsets.only(left: 10,bottom: 30),
                  child:
                  Text("The keyword public denotes that a method can be called from code "
                      "in other classes, or that a class may be used by classes outside "
                      "the class hierarchy. The class hierarchy is related to the name of"
                      " the directory in which the .java file is located. This is called"
                      " an access level modifier. Other access level modifiers include"
                      " the keywords private (a method that can only be accessed in the same class)"
                      " and protected (which allows code from the same package to access). "
                      "If a piece of code attempts to access private methods or protected methods,"
                      " the JVM will throw a SecurityException",style: TextStyle(fontSize: 20),),

                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
