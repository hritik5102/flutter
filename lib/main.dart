import 'package:flutter/material.dart';
import 'package:flutter_app/Sample.dart';
import 'package:vector_math/vector_math_lists.dart';
import 'dart:math';
import 'dart:async';
//firebase stuff

void main()=>runApp(UserApp());

class UserApp extends StatelessWidget{

  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: MyApp(),
      ),
    );
  }
}

class MyApp extends StatelessWidget{
  Widget build(BuildContext context){
    print("the widget is instantiated");
      return MaterialApp(
        title: "te pixel 3 app",
        home: Scaffold(
          drawer: Drawer(
            child: ListView(
              children: <Widget>[
                DrawerHeader(
                  child: DecoratedBox(
                    decoration: BoxDecoration(color: Colors.blue),
                    child: Icon(Icons.accessible),
                  ),
                ),
                ListTile(
                  title: Text("the user app",
                  style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.end,),
                  onLongPress: (){
                    Navigator.push(context, new MaterialPageRoute(builder: (context)=>new Sample()));
                  },
                )
              ],
            ),
          ),
          appBar: AppBar(
            title: Text("the android sdk",textAlign: TextAlign.end,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black.withOpacity(0.91),
              decoration: TextDecoration.none,
              decorationStyle: TextDecorationStyle.solid,
              decorationColor: Colors.blue
            ),),
                backgroundColor: Colors.red,
                bottom: TabBar(
                  tabs: <Widget>[
                    Tab(
                      child: Icon(Icons.edit),
                    ),
                    Tab(
                      child: Icon(Icons.enhanced_encryption),
                    )
                  ],
                ),
          ),
          body: TabBarView(
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Center(
                    child: Icon(Icons.add_call),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(

                  child:DecoratedBox(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.topRight,
                          stops: [0.1, 0.5, 0.7, 0.9],
                          colors: [
                            Colors.blue[800],
                            Colors.blue[700],
                            Colors.blue[600],
                            Colors.blue[500],
                          ]
                        )
                      ),
                  )
                  )
                ],
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.next_week),
              onPressed: (){
                  Navigator.push(context, new MaterialPageRoute(builder: (context)=> new Sample()));
              },
          ),
            ),
          );
  }
}