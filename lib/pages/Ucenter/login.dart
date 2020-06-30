import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LoginPageState();
  }
}

class LoginPageState extends State {


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.chevron_left),
        title: Text('登录'),
      ),
      body: LoginContent(),
    );
  }
}

class LoginContent extends StatefulWidget {
  createState() => LoginContentState();
}

class LoginContentState extends State {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container (
      margin: EdgeInsets.only(top: 38.0),
      color: Colors.blue,
      child: Center(
        child: Column(
          children: <Widget>[
            new Expanded(child: new Container(

            ))
          ],
        ),
      ),
    );
  }
}
