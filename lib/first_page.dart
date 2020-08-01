import 'package:flutter/material.dart';
import 'dart:async';
import 'package:sentaigazine/content_container.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProgressOpenerScreen()
    );
  }
  
}

class ProgressOpenerScreen extends StatefulWidget{
  ProgressOpenerScreen({Key key}) : super(key : key);

  @override
  State<StatefulWidget> createState() {
    return new _ProgressOpenerScreen();
  }

}

class _ProgressOpenerScreen extends State<ProgressOpenerScreen>{

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: openingPage(),
      backgroundColor: Colors.lightBlueAccent,
    );
  }

  Widget openingPage(){
      return new Center(
          child: Container(
            padding: EdgeInsets.only(top: 220,bottom: 220),
            child: Column(
              children: <Widget>[
                Container(
                  height: 200,
                  width: 250,
                  child: Image.asset("image_source/super_sentai_logo.jpeg"),
                ),
                Container(
                  height: 100,
                  width: 200,
                  child: Text(
                    "SentaiGazine",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
                Container(
                  child: const CircularProgressIndicator(),
                )
              ],
            ),
          )
      );
  }

  _loadData() async{
    var duration = new Duration(seconds: 5);
    return new Timer(duration, route);
  }

  route(){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ContainerScreen()));
  }

}
