import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'file:///C:/Users/dionk/AndroidStudioProjects/sentaigazine/lib/main_content/sentai_detail.dart';

import '../app_model/daftar_sentai.dart';

class ListSentaiScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: modelSentaiList.map((sentaiList){
        return FlatButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => sentaiDetailScreen(sentai: sentaiList)));
          },
          child: Card(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Image.asset(sentaiList.gambarUtama),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          sentaiList.namaSentai,
                          style: TextStyle(fontSize: 16.0),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Detail >",
                          style: TextStyle(color: Colors.lightBlueAccent),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      }).toList()
    );
  }
  
}
