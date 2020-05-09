import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: '这是一个标题', home: Scaffold(appBar: AppBar(
      title: Text('这是一个测试'),
      elevation: 50,
    ),));
  }
}