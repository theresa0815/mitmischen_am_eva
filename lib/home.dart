import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List poll;

  Future<String> getPoll() async {
    http.Response polls = await http.get(
        Uri.encodeFull("https://www.master-7rqtwti-dv7q56qie5yi2.de-2.platformsh.site/polls"),
      headers: {
          "Accept":"application/json"
      }
      );
    this.setState((){
      poll = jsonDecode(polls.body);
    });
    print(poll);
    print(poll[0]["question"]);
  }

  @override
  void initState(){
    this.getPoll();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Mitmischen am Eva Schulze'),),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          getPoll();
          //creating a new poll http put
        },
        child: Icon(Icons.add),
      ),
      body: Text(poll[0]["question"].toString()),
    );
  }
}
