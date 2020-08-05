import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sentaigazine/app_model/daftar_sentai.dart';
import 'package:sentaigazine/app_model/model_sentai.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:sentaigazine/sentai_detail.dart';



class sentaiDetailScreen extends StatelessWidget{

  final Sentai sentai;



  sentaiDetailScreen({@required this.sentai});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.asset(sentai.gambarUtama),
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
                      )
                    ],
                  ),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 16.0),
              child: Text(
                sentai.namaSentai,
                style: TextStyle(color: Colors.black, fontSize: 25),
                textAlign: TextAlign.center,
              )
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Icon(
                    Icons.timelapse,
                    size: 30,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15.0),
                    child: Text(
                      sentai.tahunProduksi,
                      style: TextStyle(color: Colors.black, fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 16.0, left: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Sentai Story",
                    style: TextStyle(color: Colors.lightBlueAccent, fontSize: 22),
                  ),
                  Divider(
                    color: Colors.lightBlueAccent,
                    endIndent: 150,
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 25),
                    child: Text(
                        sentai.deskripsiSentai,
                        style: TextStyle(color: Colors.black, fontSize: 18),
                        textAlign: TextAlign.justify,
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 16.0, left: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Sentai Character",
                    style: TextStyle(color: Colors.lightBlueAccent, fontSize: 22),
                  ),
                  Divider(
                    color: Colors.lightBlueAccent,
                    endIndent: 150,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 16, bottom: 16),
                    height: 150,
                    child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: sentai.urlGambarTokoh.map((urlPictTokoh){
                      return Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(urlPictTokoh),
                        ),
                      );
                    }).toList(),
                  )
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 16.0, left: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Sentai Video",
                    style: TextStyle(color: Colors.lightBlueAccent, fontSize: 22),
                  ),
                  Divider(
                    color: Colors.lightBlueAccent,
                    endIndent: 150,
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 25),
                    child: Text(
                      "Video sentai ini dapat kalian nikmati di link di bawah ini",
                      style: TextStyle(color: Colors.black, fontSize: 18),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 25, top: 16),
                    child: Text(
                      "Menuju link >>>",
                      style: TextStyle(color: Colors.lightBlueAccent, fontSize: 18),
                      textAlign: TextAlign.justify,
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 16.0, left: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Sentai Merchandise",
                    style: TextStyle(color: Colors.lightBlueAccent, fontSize: 22),
                  ),
                  Divider(
                    color: Colors.lightBlueAccent,
                    endIndent: 150,
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 25),
                    child: Text(
                      "Berbagai Merchandise sentai ini dapat kalian temukan di bawah ini",
                      style: TextStyle(color: Colors.black, fontSize: 18),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 25, top: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(10.0),
                          child: FlatButton(
                              color: Colors.green,
                              splashColor: Colors.lightGreenAccent,
                              child: Text(
                                "Tokopedia",
                                style: TextStyle(color: Colors.white, fontSize: 16),
                              ),
                              onPressed: (){
                                launchURLToped(sentai.urlMerchandise1);
                              },
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)
                              ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(10.0),
                          child: FlatButton(
                              color: Colors.pinkAccent,
                              splashColor: Colors.pink,
                              child: Text(
                                "Bukalapak",
                                style: TextStyle(color: Colors.white, fontSize: 16),
                              ),
                              onPressed: (){
                                launchURLBukalapak(sentai.urlMerchandise2);
                              },
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)
                              ),
                          ),
                        )
                      ],
                    )
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void launchURLToped(command) async{
    if(await canLaunch(command)){
      await launch(command);
    }else{
      print("couldn't launch $command");
    }
  }

  void launchURLBukalapak(command) async{
    if(await canLaunch(command)){
      await launch(command);
    }else{
      print("couldn't launch $command");
    }
  }
  
}
