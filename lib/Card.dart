import 'package:flutter/material.dart';
import 'dart:math';

class MyCard extends StatelessWidget {
  Color color;
  String url, name, desig;
  MyCard(this.color, this.url, this.name, this.desig);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.0),
      child: new Material(
        color: Colors.transparent,
        shadowColor: color,
        type: MaterialType.card,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Container(
            color: color,
            padding: EdgeInsets.all(5.0),
            child: Column(
              children: <Widget>[
                new ClipOval(
                  child: Container(
                      child: Image.network(
                        url,
                        fit: BoxFit.cover,
                      ),
                      height: 50.0,
                      width: 50.0),
                  clipper: Myclip(),
                ),
                Padding(
                  child: Text(
                    name,
                    style: new TextStyle(
                      fontSize: 15.0,
                      color: Colors.white,
                    ),
                  ),
                  padding: EdgeInsets.all(10.0),
                ),
                Padding(
                  child: Text(
                    desig,
                    style: new TextStyle(
                      fontSize: 15.0,
                      color: Colors.white,
                    ),
                  ),
                  padding: EdgeInsets.all(10.0),
                ),
                Row(
                  children: <Widget>[
                    new Padding(
                      padding: EdgeInsets.all(10.0),
                      child: new Material(
                        shape: CircleBorder(),
                        //borderRadius: BorderRadius.circular(10.0),
                        child: IconButton(
                          splashColor: color,
                          icon: Icon(
                            Icons.person_add,
                            size: 15.0,
                          ),
                          onPressed: () {},
                        ),
                        color: Colors.white,
                        //color:Colors.transparent,
                      ),
                    ),
                    new Padding(
                      padding: EdgeInsets.all(10.0),
                      child: new Material(
                        shape: CircleBorder(),
                        //borderRadius: BorderRadius.circular(10.0),
                        child: IconButton(
                          splashColor: color,
                          icon: Icon(
                            Icons.mail,
                            size: 15.0,
                          ),
                          onPressed: () {},
                        ),
                        color: Colors.white,
                        //color:Colors.transparent,
                      ),
                    ),
                  ],
                  mainAxisSize: MainAxisSize.min,
                ),
              ],
            ),
          ),
        ),
        elevation: 15.0,
      ),
    );
  }
}

class Myclip extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    return new Rect.fromCircle(
        center: new Offset(size.width / 2, size.height / 2),
        radius: min(size.width, size.height) / 2);
  }

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) {
    return true;
  }
}
