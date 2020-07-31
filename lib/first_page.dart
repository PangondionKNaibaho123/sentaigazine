import 'package:flutter/material.dart';

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

class ProgressOpenerScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Center(
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
      ),
    );
  }

}
