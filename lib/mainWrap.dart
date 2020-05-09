import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '这是一个标题', 
      home: Scaffold(
        appBar: AppBar(
          title: Text('这是一个测试'),
          elevation: 50,
          
        ),
        
        body: Layout(),
      ),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

// 

class Layout extends StatelessWidget {
  Widget build(BuildContext context) {

    return Container(
      height: 600,
      width: 400,
      color: Colors.pink,
      child: Wrap(
        spacing: 10,
        runSpacing: 60,
        children: <Widget>[
          MyButton('第一个'),
          MyButton('第2个'),
          MyButton('第3个'),
          MyButton('第4个'),
          MyButton('第555555555555555个'),
          MyButton('第6rrrrrrrrrrrrrrrrrrrrrrrrrrrrrr个'),
          MyButton('第7个'),
          MyButton('第8个'),
          MyButton('第9个'),
          MyButton('第10个'),
          MyButton('第11个'),
        ],
      )
    );
  }
}

class MyButton extends StatelessWidget {
  final String text;
  const MyButton(this.text, {Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(this.text),
      textColor: Theme.of(context).accentColor,
      onPressed: (){

      },
    );
  }

}

// class MyHome extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return RaisedButton(child: Text('第一季度'),
//     textColor: Theme.of(context).accentColor,);
//     // return Center(
//     //   child: Text(
//     //     "这是一个测试的文本",
//     //     textAlign: TextAlign.center,
//     //     textDirection: TextDirection.rtl,
//     //     style: TextStyle(
//     //       fontSize: 50.0,
//     //       fontWeight: FontWeight.bold,
//     //       color: Colors.black38,
//     //     )
//     //   ),
//     // );
//   }
// }