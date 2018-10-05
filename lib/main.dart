import 'package:tut1/Card.dart';
import 'bottombar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
//declaration part

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Home(),
    );
  }
}

class Home extends StatefulWidget {
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List url = [
    'https://www.w3schools.com/w3css/img_lights.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: new FloatingActionButton(
        child: new Icon(
          Icons.search,
          color: Colors.deepOrange,
        ),
        highlightElevation: 8.0,
        elevation: 0.0,
        backgroundColor: Colors.white,
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: new MyBottomBar(),
      appBar: new AppBar(
        backgroundColor: Colors.transparent,
        title: new Text(
          "Top Designer",
          style: new TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 22.7,
            color: Colors.black.withOpacity(0.8),
          ),
        ),
        actions: <Widget>[
          new IconButton(
            icon: Icon(Icons.add),
            onPressed: () {},
            color: Colors.black.withOpacity(0.8),
          )
        ],
        elevation: 0.0,
      ),
      body: Column(
        children: <Widget>[
          // Container(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              MyCard(
                  Color(0xfFFf3b30),
                  'https://media1.popsugar-assets.com/files/thumbor/QBft3b76ZCpAmCChIKHWzKTiN-U/fit-in/2048xorig/filters:format_auto-!!-:strip_icc-!!-/2016/03/11/956/n/1922283/4c4ca5ec_edit_img_image_36836642_1424034000/i/Andrew-Garfield-Spider-Man-GIFs.png',
                  "John Canner",
                  "UI/UX Designer"),
              MyCard(
                  Color(0xFF4cd964),
                  'https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
                  "Lisa Garf",
                  "UI/UX Designer"),
            ],
          ),

          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              MyCard(
                  Color(0xfFFf2d55),
                  'https://images.pexels.com/photos/1073567/pexels-photo-1073567.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
                  "Isacc",
                  "Fasion Designer"),
              MyCard(
                  Color(0xff007aff),
                  'https://images.pexels.com/photos/289225/pexels-photo-289225.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
                  "Perry",
                  "Game Designer"),
            ],
          ),
        ],
      ),
    );
  }
}
