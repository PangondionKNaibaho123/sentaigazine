import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sentaigazine/app_model/model_crossover.dart';
import 'package:url_launcher/url_launcher.dart';

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
                height: 400,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20, bottom: 20),
              child: Text(
                sentaiName,
                style: TextStyle(fontSize: 25, color: Colors.black),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 16.0, left: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Production",
                    style: TextStyle(color: Colors.lightBlueAccent, fontSize: 22),
                  ),
                  Divider(
                    color: Colors.lightBlueAccent,
                    endIndent: 150,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 15.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Icon(
                          Icons.new_releases,
                          size: 30,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 15.0, top: 3.0),
                          child: Text(
                            sentaiCrossover.waktuRilis,
                            style: TextStyle(color: Colors.black, fontSize: 20),
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
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
                    "Crossover Story",
                    style: TextStyle(color: Colors.lightBlueAccent, fontSize: 22),
                  ),
                  Divider(
                    color: Colors.lightBlueAccent,
                    endIndent: 150,
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 25),
                    child: Text(
                      sentaiCrossover.deskripsi,
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
                    "Crossover Video",
                    style: TextStyle(color: Colors.lightBlueAccent, fontSize: 22),
                  ),
                  Divider(
                    color: Colors.lightBlueAccent,
                    endIndent: 150,
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 25),
                    child: Text(
                      "Video crossover ini dapat kalian nikmati di link di bawah ini",
                      style: TextStyle(color: Colors.black, fontSize: 18),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(right: 25, top: 16),
                      child: InkWell(
                        child: Text(
                          "Menuju link >>>",
                          style: TextStyle(color: Colors.lightBlueAccent, fontSize: 18),
                        ),
                        onTap: () async{
                          if(await canLaunch(sentaiCrossover.urlMovie)){
                            await launch(sentaiCrossover.urlMovie);
                          }
                        },
                      )
                  )
                ],
              ),
            ),
            Container(
              height: 40,
            )
          ],
        ),
      ),
    );
  }

}

