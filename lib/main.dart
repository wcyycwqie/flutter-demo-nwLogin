import 'package:flutter/material.dart';
import 'package:nwlogin/pages/ucenter.dart';
import 'pages/order.dart';
import 'pages/mall.dart';
import 'pages/community.dart';
import 'pages/afterSale.dart';
import 'package:nwlogin/pages/Ucenter/languages.dart';

var colorBulue = Color(0xFF66ccff);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: 'NewWare',
      home: NwView(),
      routes: {
        'gotLanguage': (BuildContext context) => LanguagesPages(),
      },
    );
  }
}

class NwView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return NwViewState();
  }
}

class NwViewState extends State {
  final List<BottomNavigationBarItem> bottomNavItemList = [
    BottomNavigationBarItem(
      backgroundColor: Colors.yellow,
      icon: Icon(Icons.brightness_7),
      title: Text('智能'),
    ),
    BottomNavigationBarItem(
      backgroundColor: Colors.red,
      icon: Icon(Icons.business),
      title: Text('研选'),
    ),
    BottomNavigationBarItem(
      backgroundColor: Colors.red,
      icon: Icon(Icons.home),
      title: Text('社区'),
    ),
    BottomNavigationBarItem(
      backgroundColor: Colors.red,
      icon: Icon(Icons.speaker_notes),
      title: Text('售后'),
    ),
    BottomNavigationBarItem(
      backgroundColor: Colors.red,
      icon: Icon(Icons.tag_faces),
      title: Text('我的'),
    ),
  ];

  final pages = [Order(), Mall(), Community(), AfterSale(), UcenterContent()];

  int currentIndex;

  @override
  void initState() {
    super.initState();
    currentIndex = 0;
  }

  void _changeIndex(int index) {
    if (index != currentIndex) {
      setState(() {
        currentIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
//      appBar: new AppBar(
//        leading: new Icon(Icons.info),
//        title: new Text('Login'),
//        backgroundColor: Color(0xFF0da9e3),
//      ),
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: bottomNavItemList,
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        fixedColor: Color(0xFF16C2B5),
        onTap: (i) {
          _changeIndex(i);
        },
      ),
    );
  }
}
