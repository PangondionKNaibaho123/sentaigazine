import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sentaigazine/app_model/daftar_sentai.dart';
import 'package:sentaigazine/app_model/model_sentai.dart';
import 'package:sentaigazine/apps_drawer.dart';
import 'file:///C:/Users/dionk/AndroidStudioProjects/sentaigazine/lib/main_content/list_sentai.dart';
import 'main_content/sentai_detail.dart';

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
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: (){
              showSearch(context: context, delegate: dataSentaiSearch());
            },
          )
        ],
      ),
      drawer: appsDrawer(),
      body: ListSentaiScreen(),
    );
  }
}

class dataSentaiSearch extends SearchDelegate<Sentai>{

  final model = modelSentaiList;

  final recentModel = '';

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: (){
          query='';
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.arrow_back
      ),
      onPressed: (){
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final myListSentai = query.isEmpty? modelSentaiList : modelSentaiList.where((s) => s.namaSentai.startsWith(query)).toList();
    return myListSentai.isEmpty? Container(margin: EdgeInsets.only(left: 55.0, right: 55.0, top: 20), child: Text("Maaf, hasil tidak ditemukan 😔", style: TextStyle(fontSize: 20), textAlign: TextAlign.center,),) :
    ListView.builder(
        itemCount: myListSentai.length,
        itemBuilder: (context, index){
          final Sentai listItemSentai = myListSentai[index];
          return ListTile(
            title: Text(
              listItemSentai.namaSentai
            ),
            onTap: (){
              //showResults(context);
              Navigator.push(context, MaterialPageRoute(builder: (context) => sentaiDetailScreen(sentai: listItemSentai)));
            },
          );
        }
    );
  }
  
}