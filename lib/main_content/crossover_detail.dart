import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sentaigazine/app_model/model_crossover.dart';
import 'package:sentaigazine/main_content/sentai_detail.dart';

class CrossoverDetailScreen extends StatelessWidget{

  final SentaiCrossover sentaiCrossover;

  CrossoverDetailScreen({@required this.sentaiCrossover});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.network(
                  sentaiCrossover.gambarCrossover,
                  fit: BoxFit.fill,
                ),
                SafeArea(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.arrow_back),
                        color: Colors.white,
                        onPressed: (){
                          Navigator.pop(context);
                        },
                        iconSize: 35,
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

}