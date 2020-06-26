import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(title: 'NewWare', home: NwView());
  }
}

class NwView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
//      appBar: new AppBar(
//        leading: new Icon(Icons.info),
//        title: new Text('Login'),
//        backgroundColor: Color(0xFF0da9e3),
//      ),
      body: LoginContent(),
    );
  }
}

class LoginContent extends StatefulWidget {
  @override
  createState() => new LoginContentState();
}

class LoginContentState extends State<LoginContent> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      color: Color(0xFFffffff),
      child: new Column(
        children: <Widget>[
          new Expanded(child: new HeaderContainer()),
          new Expanded(child: new MidBar()),
          new Expanded(child: new Text('Three')),
          new Expanded(child: new Text('Four')),
        ],
      ),
    );
  }
}

class HeaderContainer extends StatefulWidget {
  @override
  createState() => new HeaderContainerState();
}

class HeaderContainerState extends State {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      height: 177.0,
      width: double.infinity,
//      color: Color(0xFF16c2b5),
      decoration: new BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [Color(0xFF16c2b5), Color(0xFF0da9e3)])),
      padding: const EdgeInsets.only(left: 30.0),
      child: new Row(
        children: <Widget>[new Expanded(child: _avatarWrapper())],
      ),
    );
  }

  Widget _avatarWrapper() {
    return new Container(
//      color: Color(0xFFAA1177),
      height: 80.0,
      margin: const EdgeInsets.only(top: 22),
      child: new Row(
        children: <Widget>[
          new IconButton(
            icon: new Icon(Icons.account_circle),
            iconSize: 71.0,
            onPressed: () {},
          ),
          new Expanded(
              child: new Container(
//                color: Colors.blue,
                padding: const EdgeInsets.only(top: 22),
                child: new Column(
                  children: <Widget>[
                    new Expanded(
                      child: new Align(
                        alignment: Alignment.centerLeft,
                        child: new Container(
                      width: 94.0,
                      child: RaisedButton(
                        onPressed: () {},
                        textColor: Color(0xFF9e6f32),
                        color: Color(0xFFead22d),
                        splashColor: Color(0xFF66CCFF),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: new Text('前往登录'),
                      ),
                    ),
                  ),
                ),
                    new Expanded(
                      child: new Align(
                        alignment: Alignment.centerLeft,
                        child: new Text(
                        '你的账号还没有登录',
                        style: new TextStyle(color: const Color(0xFFFFFFFF)),
                      ),
                    )
                )
              ],
            ),
          )),
        ],
      ),
    );
  }

}

class MidBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      margin: EdgeInsets.only(bottom: 11.0),
      width: double.infinity,
      height: 132.0,
      color: Colors.grey,
      child: new Row(
             children: <Widget>[
               new Expanded(child: new Container(
                 height: 80,
                 child: new Column(
                   children: <Widget>[
                     new IconButton(icon: new Icon(Icons.favorite), onPressed: () {}),
                     new Text('我的预约')
                   ],
                 ),
               )),
               new Expanded(child: new Container(
                 height: 80,
                 child: new Column(
                   children: <Widget>[
                     new IconButton(icon: new Icon(Icons.favorite), onPressed: () {}),
                     new Text('我的预约')
                   ],
                 ),
               )),
               new Expanded(child: new Container(
                 height: 80,
                 child: new Column(
                   children: <Widget>[
                     new IconButton(icon: new Icon(Icons.favorite), onPressed: () {}),
                     new Text('我的预约')
                   ],
                 ),
               )),
               new Expanded(child: new Container(
                 height: 80,
                 child: new Column(
                   children: <Widget>[
                     new IconButton(icon: new Icon(Icons.favorite), onPressed: () {}),
                     new Text('我的预约')
                   ],
                 ),
               )),

             ],
      ),
    );
  }
}



