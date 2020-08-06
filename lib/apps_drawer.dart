import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'content_container.dart';

class appsDrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          Wrap(
            children: <Widget>[
              createDrawerHeader(),
              ListTile(
                title: Row(
                  children: <Widget>[
                    Image.asset(
                      "image_source/jetman_icon.jpeg",
                      height: 40,
                      width: 40,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5.0),
                      child: Text(
                        "List Sentai",
                        style: TextStyle(color: Colors.lightBlueAccent,fontSize: 18),
                      ),
                    )
                  ],
                ),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ContainerScreen()));
                },
              ),
              ListTile(
                title: Row(
                  children: <Widget>[
                    Image.asset(
                      "image_source/versus_icon.jpeg",
                      height: 40,
                      width: 40,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5.0),
                      child: Text(
                        "Cross Over",
                        style: TextStyle(color: Colors.lightBlueAccent,fontSize: 18),
                      ),
                    )
                  ],
                ),
                onTap: (){},
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget createDrawerHeader(){
    return DrawerHeader(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage("image_source/all_red_sentai.jpeg")
          )
      ),
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: 20.0,
            left: 18.0,
            child: Text(
              "SentaiGazine",
              style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
  
}