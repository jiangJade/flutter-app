import 'package:flutter/material.dart';


class ContentPage extends StatefulWidget {
  ContentPage({Key key}) : super(key: key);
  _ContentPageState createState() => _ContentPageState();

}

class _ContentPageState extends State<ContentPage> {
  int count = 0;
  List list = new List();
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
       ListTile(
         title: Text('ContentPage'),
       )
      ]
    );
  }
}
