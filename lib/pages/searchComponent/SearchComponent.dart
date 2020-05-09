import 'package:flutter/material.dart';

class SearchComponent extends StatelessWidget {
  // SearchComponent({Key key}) : super(key: key);
  final arguments;
  SearchComponent({this.arguments});
  @override
  Widget build(BuildContext content) {
    return Scaffold(
      appBar: AppBar(
        title: Text('搜索页面rrr'),
      ),
      body:Text("我是一个表单页面 ${arguments != null ? arguments['id'] : '0'}")
    );
  }
}