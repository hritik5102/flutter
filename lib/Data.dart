import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
import 'dart:async';
import 'package:flutter_app/Sample.dart';
import 'dart:math';

class Data extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Home();
  }
}

class Home extends State<Data> {
  final String mains = "StatefullWidget";
  String initState() {
    return this.mains;
  }

  @override
  Widget build(BuildContext context) {
    return new Material(
      child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height * 0.33,
                width: MediaQuery.of(context).size.width,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          stops: [
                        0.1,
                        0.5,
                        0.7,
                        0.9
                      ],
                          colors: [
                        Colors.red[600],
                        Colors.red[700],
                        Colors.red[800],
                        Colors.red[900],
                      ])),
                ),
              ),
              AppBar(
                  backgroundColor: Colors.transparent,
                  title: Text(
                    "The data Page",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  )),
            ],
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: FloatingActionButton(
              child: DecoratedBox(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        stops: [
                      0.1,
                      0.2,
                      0.8,
                      0.91
                    ],
                        colors: [
                      Colors.greenAccent[500],
                      Colors.greenAccent[600],
                      Colors.greenAccent[700],
                      Colors.greenAccent[800],
                    ])),
                child: Text(
                  "BACK",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontFamily: "cursive",
                      decoration: TextDecoration.none),
                ),
              ),
              onPressed: () {
                print("pressed now");
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => new Sample()));
              },
            ),
          )
        ],
      ),
    );
  }
}
