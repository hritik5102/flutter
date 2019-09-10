import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart' as prefix0;
import 'package:flutter/material.dart';
import 'package:flutter_app/main.dart';
import 'dart:async';
import 'dart:math';

class Sample extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return StackState();
  }
}

class StackState extends State<Sample> {
  final int IconSize = 10;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
      child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height * 0.35,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        stops: [
                          0.1,
                          0.5,
                          0.7,
                          0.9
                        ],
                        colors: [
                          Colors.indigo[800],
                          Colors.indigo[700],
                          Colors.indigo[600],
                          Colors.indigo[500],
                        ]),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    )),
              ),
              AppBar(
                backgroundColor: Colors.transparent,
                title: Text(
                  "Hello Data user",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
//               use of align widget for custom alignment inside the container box of defined height

          Expanded(
            child: Container(
              margin: const EdgeInsets.only(bottom: 15),
              height: MediaQuery.of(context).size.height*3,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: <Widget>[
                  Container(
                    width: 175,
                    color: Color.fromARGB(50,200,255,1),
                    child: Center(
                      child: Text(
                        "The recent post",
                        style: TextStyle(
                          fontSize: 30,

                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 40,
                    width: 175,
                    color: Colors.green,
                    child: Align(
                      alignment: Alignment.center,
                      child: Column(
                        children: <Widget>[
                          Text("The flutter app demo"),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Text("Vedang",style: TextStyle(fontWeight: FontWeight.bold,fontFamily: "cursive",fontSize: 20),),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 40,
                    width: 175,
                    color: Color.fromARGB(101,201,301,1),
                    child: Align(
                      alignment: Alignment.center,
                      child: Column(
                        children: <Widget>[
                          Text("The React app demo"),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Text("Andrew",style: TextStyle(fontWeight: FontWeight.bold,fontFamily: "cursive",fontSize: 20),),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 40,
                    width: 175,
                    color: Colors.blue,
                    child: Align(
                      alignment: Alignment.center,
                      child: Column(
                        children: <Widget>[
                          Text("The Vue app demo"),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Text("Matt",style: TextStyle(fontWeight: FontWeight.bold,fontFamily: "cursive",fontSize: 20),),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 40,
                    width: 175,
                    color: Colors.red,
                    child: Align(
                      alignment: Alignment.center,
                      child: Column(
                        children: <Widget>[
                          Text("The NodeJs app demo"),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Text("Henry",style: TextStyle(fontWeight: FontWeight.bold,fontFamily: "cursive",fontSize: 20),),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Align(
              alignment: Alignment.centerRight,
              child: Container(
                margin: new EdgeInsets.only(right: 4, bottom: 5),
                child: FloatingActionButton(
                  backgroundColor: Colors.red,
                  child: Container(
                    color: Colors.blue,
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: Align(
                      alignment: Alignment.center,
                      child: Icon(Icons.search),
                    ),
                  ),
                  onPressed: () {
                    print("this is pressed call ended");
                    Navigator.of(context);
                  },
                ),
              ))
        ],
      ),
    );
  }
}
