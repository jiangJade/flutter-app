import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);
  _HomePageState createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
       ListTile(
         title: Text('这是home页'),
       ),
       RaisedButton(
         child: Text('跳转到搜索页888888888888'),
         onPressed: (){
           Navigator.pushNamed(context,'/search', arguments: {"id": 4444});
          //  Navigator.of(context).push(
          //    MaterialPageRoute(
          //      builder: (content) => SearchComponent()
          //    )
          //  );
         }
       ),
       ListTile(
         title: Text('这是home页'),
       ),
       ListTile(
         title: Text('这是home页'),
       ),
      ]
    );
  }
}
