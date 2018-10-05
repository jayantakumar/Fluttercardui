import 'package:flutter/material.dart';

class MyBottomBar extends StatelessWidget {
  const MyBottomBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new ClipRRect(
      borderRadius: BorderRadius.circular(3.0),
      child: BottomAppBar(
        elevation: 0.0,
        color: Colors.white,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 5.0),
          child: Row(
            children: <Widget>[
              new IconButton(
                iconSize: 25.0,
                icon: Icon(
                  Icons.home,
                  color: Colors.black54,
                ),
                onPressed: () {},
              ),
              //new Expanded(flex: 1,child:Container()),
              Spacer(),
              //new Text("Search",style: new TextStyle(fontWeight: FontWeight.w300),),
              //Spacer(),
              new IconButton(
                iconSize: 25.0,
                icon: Icon(Icons.settings, color: Colors.black54),
                onPressed: () {},
              )
            ],
          ),
        ),
        notchMargin: 5.0,
        shape: new CircularNotchedRectangle(),
      ),
    );
  }
}
