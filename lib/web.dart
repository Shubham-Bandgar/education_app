import 'package:education_app/webyt.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class web extends StatefulWidget {
  const web({Key? key}) : super(key: key);

  @override
  State<web> createState() => _webState();
}

class _webState extends State<web> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Web Development",style: TextStyle(color: Colors.black),),
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
                                  image: AssetImage("assets/images/illustration-13.png"),
                                )),
                          ],
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>webyt()));
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
                child: Text("What is Web?",style: TextStyle(
                  fontWeight: FontWeight.bold,fontSize: 30,
                ),),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(left: 10,bottom: 20),
                child: Text("Web development is the work involved in developing a website for"
                    " the Internet (World Wide Web) or an intranet (a private network)."
                    " Web development can range from developing a simple single static page of plain "
                    "text to complex web applications, electronic businesses, and social network services."
                    " A more comprehensive list of tasks to which Web development commonly refers, may "
                    "include Web engineering, Web design, Web content development, client liaison,"
                    " client-side/server-side scripting, Web server and network security configuration, "
                    "and e-commerce development.",style: TextStyle(
                  fontSize: 20,
                ),),
              ),
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(left: 10),
                child: Text("Functions ",style: TextStyle(
                  fontWeight: FontWeight.bold,fontSize: 30,
                ),),
              ),
              Image(image: AssetImage("assets/images/webcrse.png",),),
              Container(
                margin: EdgeInsets.only(left: 10,bottom: 30),
                child: Text("Among Web professionals, Web development usually refers to the main "
                    "non-design aspects of building Web sites: writing markup and coding."
                    "Web development may use content management systems (CMS) to make content"
                    " changes easier and available with basic technical skills.",style: TextStyle(fontSize: 20),),
              ),
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(left: 15),
                child: Text("What Is HTML",style: TextStyle(
                  fontWeight: FontWeight.bold,fontSize: 30,
                ),),
              ),
              Container(
                margin: EdgeInsets.only(left: 10,bottom: 30),
                child:
                Text("HTML stands for HyperText Markup Language."
                    " It is used to design the front end portion of web pages using markup language. "
                    "It acts as a skeleton for a website since it is used to make the structure of a website.",style: TextStyle(fontSize: 20),),

              ),

              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(left: 15),
                child: Text("CSS ",style: TextStyle(
                  fontWeight: FontWeight.bold,fontSize: 30,
                ),),
              ),
              Image(image: AssetImage("assets/images/webcrse2.png")),
              Container(
                margin: EdgeInsets.only(left: 10,bottom: 30),
                child:
                Text("CSS is used to style the content of a website using a "
                    "small set of files that are kept across the entire site. "
                    "This way, whenever a change must be applied to say, consistently change "
                    "the color of all the buttons found in every page of the website, a web dev needs "
                    "to edit only a single file in CSS.",style: TextStyle(fontSize: 20),),

              ),
            ],
          ),
        ),
      ),
    );
  }
}
