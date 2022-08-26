import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class python extends StatefulWidget {
  const python({Key? key}) : super(key: key);

  @override
  State<python> createState() => _pythonState();
}

class _pythonState extends State<python> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(backgroundColor: Colors.pink ,
          title: Text("Python Development"),
        ),
      ),
    );
  }
}
