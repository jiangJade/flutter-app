import 'package:flutter/material.dart';

class FormPage extends StatelessWidget {
  // String title;
  // FormPage({this.title='表单'});
  final arguments;
  FormPage({this.arguments});
  
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      //  floatingActionButton: FloatingActionButton(
      //    child: Text('返回的按钮'),
      //    onPressed: (){
      //      Navigator.of(context).pop();
      //    }
      //  ),
      appBar: AppBar(
        title: Text(this.arguments != null ? arguments['id'] : 'rrrrrrrrrrr'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title:Text('这是表单页面')
          ),
         
          ListTile(
            title:Text('这是表单页面')
          ),
         
          ListTile(
            title:Text('这是表单页面')
          ),
         
          ListTile(
            title:Text('这是表单页面')
          ),
         
          ListTile(
            title:Text('这是表单页面')
          ),
         
        ]
      )
    );
  }
}
