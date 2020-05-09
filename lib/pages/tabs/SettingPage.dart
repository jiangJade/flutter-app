import 'package:flutter/material.dart';
import '../formPage/FormPage.dart';

class SettingPage extends StatefulWidget {
  SettingPage({Key key}) : super(key: key);
  _SettingPageState createState() => _SettingPageState();

}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          child: Text('跳转到表单页面'),
          onPressed: (){
            // Navigator.pushNamed(context, '/form');
            // Navigator.of(context).push(
            //   MaterialPageRoute(
            //     builder: (context) => FormPage(title: '这是跳转过来的值')
            //   )
            // );
          }
        )
      ]
    );
  }
}
