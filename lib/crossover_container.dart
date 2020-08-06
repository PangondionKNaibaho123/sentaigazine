import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sentaigazine/apps_drawer.dart';
import 'package:sentaigazine/main_content/list_crossover.dart';

class CrossoverContainer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "List CrossOver",
          style: TextStyle(fontSize: 20.0, color: Colors.white),
        ),
        backgroundColor: Colors.lightBlueAccent,
      ),
      drawer: appsDrawer(),
      body: ListCrossoverScreen(),
    );
  }

}