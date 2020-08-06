import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sentaigazine/app_model/daftar_crossover.dart';

class ListCrossoverScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      scrollDirection: Axis.vertical,
      crossAxisCount: 2,
      primary: false,
      crossAxisSpacing: 0,
      mainAxisSpacing: 0,
      children: modelCrossoverList.map((crossoverList){
        return Container(
          child: FlatButton(
            onPressed: (){},
            child: Card(
              child: Wrap(
                children: <Widget>[
                  Image.network(crossoverList.gambarCrossover)
                ],
              )
            ),
          )
        );
      }).toList()
    );
  }

}