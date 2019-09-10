import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/main.dart';

class Data extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return DataApp();
  }
}

class DataApp extends State<Data>{
   String UserData = "vedang {arasnis";
  final int count = 20;
  @override
  void initState() {
    super.initState();
  }
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("the data Goes here"),
          backgroundColor: Colors.green,
        ),
          body: Container(
                  margin: EdgeInsets.symmetric(vertical: 20.0),
                  height: 200.0,
                  child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                          Container(
                              width: 160.0,
                              color: Colors.blueAccent,
                            child: Center(
                              child: Text(
                                "React",
                                style: TextStyle(
                                  fontSize: 20
                                ),
                              ),
                            ),
                          ),
                          Container(
                              width: 160.0,
                              color: Colors.redAccent,
                            child: Center(
                              child: Text(
                                "Angular",
                                style: TextStyle(
                                    fontSize: 20
                                ),
                              ),
                            ),
                          ),
                          Container(
                              width: 160.0,
                              color: Colors.green,
                            child: Center(
                              child: Text(
                                "Vue",
                                style: TextStyle(
                                    fontSize: 20
                                ),
                              ),
                            ),
                          ),
                          Container(
                              width: 160.0,
                              color: Colors.orange,
                            child: Center(
                              child: Text(
                                "Firebase",
                                style: TextStyle(
                                    fontSize: 20
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 160.0,
                            color: Colors.black,
                            child: Center(
                              child: Text(
                                "CTos",
                                style: TextStyle(
                                    fontSize: 20,
                                  color: Colors.white
                                ),
                              ),
                            ),
                         ),
                ],
            ),
        ),
        bottomNavigationBar: (
            FloatingActionButton(
              child: Icon(Icons.backspace),
              onPressed: (){
                print("the is the user pressed");
                Navigator.push(context, new MaterialPageRoute(
                  builder: (context)=> new UserApp()
                ));
                setState(() {
                  this.UserData = 'Option selcted';
                });
              },
            )

        ),
      )
    );
  }
}