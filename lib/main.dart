import 'package:flutter/material.dart';
import 'package:flutter_app/Sample.dart';
import 'package:vector_math/vector_math_lists.dart';
import 'package:flutter/animation.dart';
import 'package:flutter_app/Data.dart';
//firebase stuff

void main() => runApp(UserApp());

class UserApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: MyApp(),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
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
                title: DecoratedBox(
                    decoration: BoxDecoration(color: Colors.greenAccent),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "the user app",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            fontStyle: FontStyle.italic),
                        textAlign: TextAlign.end,
                      ),
                    )),
                onLongPress: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new Sample()));
                },
              ),
              ListBody(
                children: <Widget>[
                  ListTile(
                      onTap: () {
                        print("in tap mode");
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => new Data()));
                      },
                      title: DecoratedBox(
                          decoration: BoxDecoration(color: Colors.black),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "The Data Page",
                              style: TextStyle(
                                  color: Colors.orangeAccent,
                                  fontFamily: "cursive",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                  fontStyle: FontStyle.italic,
                                  decoration: TextDecoration.none),
                            ),
                          )))
                ],
              ),
              ListBody(
                children: <Widget>[
                  DecoratedBox(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                          end: Alignment.topRight,
                          stops: [0.2,0.4,0.6,1],
                          colors:[
                            Colors.deepPurpleAccent[500],
                            Colors.deepPurpleAccent[600],
                            Colors.deepPurpleAccent[700],
                            Colors.deepPurpleAccent[800],
                          ]
                    ),
                  ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "the data main page",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: "cursoive",
                          decoration: TextDecoration.none
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        appBar: AppBar(
          title: Text(
            "the android sdk",
            textAlign: TextAlign.end,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black.withOpacity(0.91),
                decoration: TextDecoration.none,
                decorationStyle: TextDecorationStyle.solid,
                decorationColor: Colors.blue),
          ),
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
                  margin: const EdgeInsets.only(top: 25),
                  child: Icon(Icons.call_end),
                )
              ],
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.next_week),
          onPressed: () {
            Navigator.push(context,
                new MaterialPageRoute(builder: (context) => new Sample()));
          },
        ),
      ),
    );
  }
}
