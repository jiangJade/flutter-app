import 'package:flutter/material.dart';

import 'tabs/ContentPage.dart';
import 'tabs/Home.dart';
import 'tabs/SettingPage.dart';

class Tabs extends StatefulWidget {
  Tabs({Key key}) : super(key: key);
  _TabsState createState() => _TabsState();

}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;
   List _pageList = [
    ContentPage(),
    HomePage(),
    SettingPage()
  ];
  @override
  Widget build(BuildContext content) {
    return Scaffold(
        appBar: AppBar(
          title: Text('这是一个测试'),
          elevation: 50,
        ),
        body: this._pageList[this._currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: this._currentIndex,
          onTap: (int index) {
            setState(() {
              this._currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('首页')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('内容')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('设置')
            )
          ]
        )
      );
  }
}