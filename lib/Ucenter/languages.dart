import 'package:flutter/material.dart';

class LanguagesPages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold (
      appBar: AppBar(
        leading: new IconButton(
            icon: Icon(Icons.chevron_left),
            onPressed: (){
              print('back');
              Navigator.of(context).pop();
        }),
        title: Text('多语言'),
        actions: <Widget>[
          Text('保存')
        ],
      ),
      body: new Container(
        height: 300,
        child: new ListView(
          children: <Widget>[
            ListTile(
              title: Text('跟随系统'),
              trailing: Icon(Icons.done),
            ),
            new Divider(),
            ListTile(
              title: Text('简体中文'),
            ),
            new Divider(),
            ListTile(
              title: Text('English'),
            )
          ],
        ),
      ),
    );
  }
}