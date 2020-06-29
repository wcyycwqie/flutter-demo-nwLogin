import 'package:flutter/material.dart';

class UcenterContent extends StatefulWidget {
  @override
  createState() => new UcenterContentState();
}

class UcenterContentState extends State<UcenterContent> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      color: Color(0xFFEEEEEE),
      child: new Column(
        children: <Widget>[
          new Expanded(child: new HeaderContainer(), flex: 0,),
          new Expanded(child: new MidBar(), flex: 0,),
          new Expanded(child: new LoginList(), flex: 0,),
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
                        ))
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
      color: Colors.white,
      child: new Row(
        children: <Widget>[
          new Expanded(
              child: new Container(
                height: 80,
                child: new Column(
                  children: <Widget>[
//                     new IconButton(icon: new Icon(Icons.favorite), onPressed: () {}),
                    new Container(
                      margin: EdgeInsets.only(bottom: 9.0),
                      child: Image(
                        image: AssetImage('assets/images/ucenter/myorder.png'),
                        width: 49,
                        height: 49,
                      ),
                    ),
                    new Text('我的预约', style: new TextStyle(color: const Color(0xFF333333)),)
                  ],
                ),
              )),
          new Expanded(
              child: new Container(
                height: 80,
                child: new Column(
                  children: <Widget>[
                    new Container(
                      margin: EdgeInsets.only(bottom: 9.0),
                      child: Image(
                        image: AssetImage('assets/images/ucenter/audit.png'),
                        width: 49,
                        height: 49,
                      ),
                    ),
                    new Text('预约审核', style: new TextStyle(color: const Color(0xFF333333)),)
                  ],
                ),
              )),
          new Expanded(
              child: new Container(
                height: 80,
                child: new Column(
                  children: <Widget>[
                    new Container(
                      margin: EdgeInsets.only(bottom: 9.0),
                      child: Image(
                        image: AssetImage('assets/images/ucenter/fav.png'),
                        width: 49,
                        height: 49,
                      ),
                    ),
                    new Text('我的关注', style: new TextStyle(color: const Color(0xFF333333)),)
                  ],
                ),
              )),
          new Expanded(
              child: new Container(
                height: 80,
                child: new Column(
                  children: <Widget>[
                    new Container(
                      margin: EdgeInsets.only(bottom: 9.0),
                      child: Image(
                        image: AssetImage('assets/images/ucenter/folder.png'),
                        width: 49,
                        height: 49,
                      ),
                    ),
                    new Text('收藏文章', style: new TextStyle(color: const Color(0xFF333333)),)
                  ],
                ),
              )),
        ],
      ),
    );
  }
}

class LoginList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Colors.white,
      constraints: BoxConstraints(
        maxHeight: 320,
      ),
      child: new ListView(
        padding: const EdgeInsets.only(left: 1.0, top: 0, right: 0.0, bottom: 0),
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.language),
            title: Text('多语言'),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          new Divider(),
          ListTile(
            leading: Icon(Icons.verified_user),
            title: Text('账号与安全'),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          new Divider(),
          ListTile(
            leading: Icon(Icons.mail),
            title: Text('BTS注册码'),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          new Divider(),
          ListTile(
            leading: Icon(Icons.help),
            title: Text('帮助中心'),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          new Divider(),
          ListTile(
            leading: Icon(Icons.headset),
            title: Text('客户服务'),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          new Divider(),
          ListTile(
            leading: Icon(Icons.comment),
            title: Text('意见反馈'),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          new Divider(),
          ListTile(
            leading: Icon(Icons.info),
            title: Text('关于'),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          new Divider(),
        ],
      ),
    );
  }
}
