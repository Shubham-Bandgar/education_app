import 'package:education_app/login.dart';
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
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/images/reg.png",),fit: BoxFit.cover)

      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Register"),
        ),

        backgroundColor: Colors.white38,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Column(
                  children: [
                    Container(
                      padding:EdgeInsets.all(30),
                      child: TextFormField(decoration: InputDecoration(labelText: "Enter Your Name",helperText: "Your Name"),
                        onChanged: (String value){
                          print("Entered name is :${value}");
                        },
                      ),
                    ),
                    SizedBox(
                      height: 1,
                    ),
                    Container(
                      padding:EdgeInsets.all(30),
                      child: TextFormField(decoration: InputDecoration(labelText: "Enter Your Email",helperText: "Email"),
                        onChanged: (String value){
                          print("Entered E-Mail is :${value}");
                        },
                      ),
                    ),
                    SizedBox(
                      height: 1,
                    ),
                    Container(
                      padding:EdgeInsets.all(30),
                      child: TextFormField(decoration: InputDecoration(labelText: "Mobile Number",helperText: "Mobile Number"),
                        onChanged: (String value){
                          print("Entered number is :${value}");
                        },
                      ),
                    ),
                    SizedBox(
                      height: 1,
                    ),
                    Container(
                      padding:EdgeInsets.all(30),
                      child: TextFormField(decoration: InputDecoration(labelText: "Enter Your Education",helperText: "Education"),
                        onChanged: (String value){
                          print("Entered Education is :${value}");
                        },
                      ),
                    ),
                    SizedBox(
                      height: 1,
                    ),
                    Container(
                      padding:EdgeInsets.all(30),
                      child: TextFormField(decoration: InputDecoration(labelText: "Enter Your Password",helperText: "Password"),
                        onChanged: (String value){
                          print("Entered Password is :${value}");
                        },
                      ),
                    ),
                    SizedBox(
                      height: 0,
                    ),
                    Container(
                      padding:EdgeInsets.all(30),
                      child: TextFormField(decoration: InputDecoration(labelText: "Confirm Your Password",helperText: "Confirm Password"),
                        onChanged: (String value){
                          print("Entered Conform Password is :${value}");
                        },
                      ),
                    ),
                    Container(
                      child: ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>login()));
                      },
                        child: Text("Register",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,),),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),



      ),

    );


  }
}
