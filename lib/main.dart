import 'package:flutter/material.dart';

import 'routes/Routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '这是一个标题', 
      // home: Tabs(),
      initialRoute: '/',
      onGenerateRoute: onGenerateRoute
      // routes: {
      //   '/form':(context)=>FormPage(),
      //   '/search': (context)=>SearchComponent()
      // }
    );
  }
}



