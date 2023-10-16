import 'package:education_app/Homescreen.dart';
import 'package:education_app/courses.dart';
import 'package:education_app/reg.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'AppConstant.dart';
import 'admin.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  String userName = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Login",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.red, fontSize: 25),
          ),
          centerTitle: true,
          backgroundColor: Colors.cyanAccent,
          shadowColor: Colors.black,
        ),
        backgroundColor: Colors.orange,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/SMA.png"),
                    radius: 50,
                    backgroundColor: Colors.cyanAccent,
                  ),
                ),
               SizedBox(
                 height: 10,
               ),
                Text(
                  "SmartLearn",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                Container(
                  padding: EdgeInsets.all(30),
                  child: TextFormField(
                    decoration: InputDecoration(
                        labelText: "username", helperText: "Username"),
                    onChanged: (value) {
                      setState(() {
                        userName = value;
                      });
                      // print("Entered username is :${value}");
                    },
                    onFieldSubmitted: (value) {
                      setState(() {
                        userName = value;
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 0,
                ),
                Container(
                  padding: EdgeInsets.all(30),
                  child: TextFormField(
                    decoration: InputDecoration(

                        labelText: "password", helperText: "Enter password"),
                    onChanged: (value) {
                      setState(() {
                        password = value;
                      });

                      //     print("Entered password is :${value}");
                    },obscureText: true,
                    onFieldSubmitted: (value) {
                      setState(() {
                        password = value;
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    style: ButtonStyle(
                        elevation: MaterialStateProperty.all<double>(10),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.deepOrange),
                        shape: MaterialStateProperty.all<OutlinedBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(15),
                                    bottomLeft: Radius.circular(15))))),
                    onPressed: () {
                      showDialog(
                         barrierDismissible: false,
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: Text("Sure to contineue"),
                          content: Text("Logged In"),
                        ),
                      );
                    },
                    child: ElevatedButton(
                        onPressed: () {
                          print("userName : $userName\npassword : $password");
                          if (userName == AppConstant.userName && password==AppConstant.password) {
                            showPopup(true);
                          } else {
                            showPopup(false);
                          }
                        },
                        child: Text("Log In"))),
                SizedBox(
                  height: 30,
                ),
                Container(
                  child: Text(
                    "Dont Have An Account ?",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => reg()));
                    },
                    child: Text("Sign Up Here"),
                  ),
                ),
                 Container(
                   child: Text("Admin",style: TextStyle(fontWeight: FontWeight.bold),),
                 ),
                Container(
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>admin()));
                  },
                    child: Text("Log in as Admin")),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  showPopup(bool flag) {
    return showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) => AlertDialog(
              backgroundColor: Colors.orange[300],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  topLeft: Radius.circular(15),
                ),
              ),
              title: Text("LogIn"),
              content: (flag == true)
                  ? Text("Logged In Successfully")
                  : Text("Login Failed.Try again"),
              actions: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    if (flag == true) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Homescreen()));
                    } else {
                      Navigator.pop(context);
                    }
                  },
                  child: const Text(
                    "ok",
                  ),
                ),
              ],
            ),
    );
  }
}
