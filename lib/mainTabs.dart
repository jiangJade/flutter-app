import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '这是一个标题', 
      home: Tabs()
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);
  _HomePageState createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {
  int count = 0;
  List list = new List();
  @override
  Widget build(BuildContext content) {
    return ListView(
      children: <Widget>[
        Column(
          children: this.list.map((val){
            return ListTile(
              title: Text(val)
            );
          }).toList()
        ),
        SizedBox(height: 20),
        RaisedButton(
          child: Text('按钮测试'),
          onPressed: () {
            setState(() {
              this.list.add('新增数据1');
              this.list.add('新增数据Text');
            });
          }
        )
      ]
    );
    // return Column(
    //   children: <Widget>[
    //     // SizeBox(height: 200),
    //     Chip(
    //       label: Text('${this.count}这是一个按钮')
    //     ),
    //     RaisedButton(
    //       child: Text('这是一个按钮'),
    //       onPressed: () {
    //         setState(() {
    //           this.count++;
    //         });
    //       }
    //     )
    //   ]
    // );

  }
}

class Tabs extends StatefulWidget {
  Tabs({Key key}) : super(key: key);
  _TabsState createState() => _TabsState();

}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext content) {
    return Scaffold(
        appBar: AppBar(
          title: Text('这是一个测试'),
          elevation: 50,
          
        ),
        body: HomePage(),
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


// class HomePage extends StatelessWidget {
//    count = 0;
//   // const HomePage(Key key) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: <Widget>[
//         SizeBox(height: 200),
//         Text('${this.count}nihao'),
//         SizeBox(height: 20),
//         RaiseButton(
//           child: Text('这是按钮',
//           onPressed: () {
//             this.count ++;
//             print(this.count);
//           }
//           )
//         )
//       ]
//     );
//   }
// }



