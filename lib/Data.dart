import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
import 'dart:async';
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
      child: new Column(
        children: <Widget>[
          Container(
              child: AppBar(
            title: new DecoratedBox(
              decoration: new BoxDecoration(
                  color: Colors.transparent,
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.topRight,
                      stops: [
                        0.7,
                        0.8,
                        0.5,
                        1
                      ],
                      colors: [
                        Colors.red[600],
                        Colors.red[700],
                        Colors.red[800],
                        Colors.red[900]
                      ])),
            ),
          ))
        ],
      ),
    );
  }
}
