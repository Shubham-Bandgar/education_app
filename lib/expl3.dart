import 'package:education_app/explyt3.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class expl3 extends StatefulWidget {
  const expl3({Key? key}) : super(key: key);

  @override
  State<expl3> createState() => _expl3State();
}

class _expl3State extends State<expl3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Internet Of Things",style: TextStyle(color: Colors.black),),
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
                                  image: AssetImage("assets/images/expl3.png"),
                                )),
                          ],
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>explyt3()));

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
                child: Text("Internet Of Things",style: TextStyle(
                  fontWeight: FontWeight.bold,fontSize: 30,
                ),),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(left: 10,bottom: 20),
                child: Text("The Internet of things (IoT) describes physical objects (or groups of such objects) with sensors, processing ability, software, and other technologies that connect and exchange data with other devices and systems over the Internet or other communications networks.[1][2][3][4] Internet of things has been considered a misnomer because devices do not need to be connected to the public internet, they only need to be connected to a network and be individually addressable.",style: TextStyle(
                  fontSize: 20,
                ),),
              ),
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(left: 10),
                child: Text("Industrial applications ?",style: TextStyle(
                  fontWeight: FontWeight.bold,fontSize: 30,
                ),),
              ),
              Image(image: AssetImage("assets/images/iotcrse3.png",),),
              Container(
                margin: EdgeInsets.only(left: 10,bottom: 30),
                child: Text("Also known as IIoT, industrial IoT devices acquire and analyze data from connected equipment, operational technology (OT), locations, and people. Combined with operational technology (OT) monitoring devices, IIoT helps regulate and monitor industrial systems.[67] Also, the same implementation can be carried out for automated record updates of asset placement in industrial storage units as the size of the assets can vary from a small screw to the whole motor spare part, and misplacement of such assets can cause a loss of manpower time and money..",style: TextStyle(fontSize: 20),),
              ),
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(left: 15),
                child: Text("Infrastructure applications",style: TextStyle(
                  fontWeight: FontWeight.bold,fontSize: 30,
                ),),
              ),
              Container(
                margin: EdgeInsets.only(left: 10,bottom: 30),
                child:
                Text("Monitoring and controlling operations of sustainable urban and rural infrastructures like bridges, railway tracks and on- and offshore wind-farms is a key application of the IoT.[70] The IoT infrastructure can be used for monitoring any events or changes in structural conditions that can compromise safety and increase risk. The IoT can benefit the construction industry by cost-saving, time reduction, better quality workday, paperless workflow and increase in productivity. It can help in taking faster decisions and save money with Real-Time Data Analytics. It can also be used for scheduling repair and maintenance activities in an efficient manner, by coordinating tasks between different service providers and users of these facilities.[52] IoT devices can also be used to control critical infrastructure like bridges to provide access to ships. Usage of IoT devices for monitoring and operating infrastructure is likely to improve incident management and emergency response coordination, and quality of service, up-times and reduce costs of operation in all infrastructure related areas.[79] Even areas such as waste management can benefit[80] from automation and optimization that could be brought in by the IoT",style: TextStyle(fontSize: 20),),

              ),

              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(left: 15),
                child: Text("Basics of Widgets in Flutter ",style: TextStyle(
                  fontWeight: FontWeight.bold,fontSize: 30,
                ),),
              ),
              Image(image: AssetImage("assets/images/iotcrse3_2.png")),
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
              Image(image: AssetImage("assets/images/iotcrse3_3.png"),),
            ],
          ),
        ),
      ),
    );
  }
}
