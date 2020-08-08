import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sentaigazine/apps_drawer.dart';
import 'file:///C:/Users/dionk/AndroidStudioProjects/sentaigazine/lib/main_content/list_sentai.dart';


class ContainerScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "List Sentai",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        backgroundColor: Colors.lightBlueAccent,
      ),
      drawer: appsDrawer(),
      body: ListSentaiScreen(),
    );
  }
}