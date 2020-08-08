import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sentaigazine/app_model/model_crossover.dart';

class CrossoverDetailScreen extends StatelessWidget{

  final SentaiCrossover sentaiCrossover;
  final String sentaiName;

  CrossoverDetailScreen({@required this.sentaiCrossover, @required this.sentaiName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: Text(
          "Crossover Detail",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Center(
              child: Image.network(
                sentaiCrossover.gambarCrossover,
                fit: BoxFit.fill,
              ),
            ),
            Container(
              child: Text(
                sentaiName,
                style: TextStyle(fontSize: 25, color: Colors.black),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }

}

