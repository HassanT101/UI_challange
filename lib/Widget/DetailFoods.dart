import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:math';
import 'package:flutter/animation.dart';

class DetailFoods extends StatefulWidget {
  _DetailFoods createState() => new _DetailFoods();
}

class _DetailFoods extends State<DetailFoods>
    with SingleTickerProviderStateMixin {
  final String platters;
  final String restrents;
  final String prices;
  final String foodies;

  final String rating;
  final String test;

  _DetailFoods(
      {this.platters,
      this.prices,
      this.restrents,
      this.foodies,
      this.rating,
      this.test});

  AnimationController controller;
  Animation _animation;

  @override
  void initState() {
    super.initState();
    Tween _tween = new AlignmentTween(
      begin: new Alignment(-1.0, 0.0),
      end: new Alignment(1.0, 0.0),
    );
    _animation = _tween.animate(controller);
    controller.forward();

    controller = new AnimationController(
        duration: new Duration(seconds: 2), vsync: this);
  }

  @override

  //it will design the layout of the page

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Container(
      child: SafeArea(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
            Row(children: <Widget>[
              Container(
                  color: Colors.pink[50],
                  height: height * 0.39,
                  width: 360,
                  child: Column(children: <Widget>[
                    Align(
                        alignment: Alignment.bottomLeft,
                        child: FlatButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          color: Colors.white,
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.black26,
                            size: 20,
                          ),
                          onPressed: () {},
                        )),
                    Row(children: <Widget>[
                      Transform.rotate(
                          angle: pi / 8,
                          child: Padding(
                              padding: EdgeInsets.only(left: 25),
                              child: Image.asset(
                                'Assets/fork.png',
                                color: Colors.grey,
                                height: height * 0.32,
                              ))),
                      CircleAvatar(
                        maxRadius: 97,
                        foregroundColor: Colors.red[400],
                        backgroundImage: AssetImage(foodies),
                      ),
                      Transform.rotate(
                          angle: 100,
                          child: Padding(
                              padding: EdgeInsets.only(right: 3),
                              child: Image.asset(
                                'Assets/knife.png',
                                color: Colors.grey,
                                height: height * 0.32,
                              )))
                    ])
                  ]))
            ]),
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: height * 0.007),
                        child: Text(
                          '' + platters,
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'myfont12',
                              fontSize: 22),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.06,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: height * 0.22),
                        child: CircleAvatar(
                          backgroundColor: Colors.red,
                          maxRadius: 24,
                          child: Icon(
                            Icons.favorite,
                            color: Colors.blue[400],
                            size: 30,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                  Row(children: <Widget>[
                    Positioned(
                      left: 1,
                      child: Icon(
                        Icons.location_on,
                        color: Colors.red,
                        size: 22,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Positioned(
                        child: Text(
                      restrents,
                      style: TextStyle(
                        fontFamily: 'myfont12',
                        fontSize: 20,
                      ),
                    )),
                    SizedBox(height: 10, width: height * 0.06),
                    Padding(
                      padding: EdgeInsets.only(left: 2),
                      child: Text(" \$$prices",
                          style: TextStyle(
                            color: Colors.redAccent,
                            fontSize: 20,
                          )),
                    ),
                    SizedBox(height: height * 0.05, width: height * 0.01),
                  ]),
                  Divider(
                    indent: 20,
                    endIndent: 20,
                    color: Colors.black54,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: <Widget>[
                      Positioned(
                        child: RatingText(context),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Divider(
                    color: Colors.black,
                    indent: 20,
                    endIndent: 20,
                    height: 2,
                  ),
                  SizedBox(height: 10),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Overveiw',
                          style: TextStyle(
                            color: Colors.black87,
                            fontFamily: 'myfont5',
                            fontSize: 22,
                          ),
                        ),
                      ]),
                  SizedBox(height: 10),
                  Container(
                      height: 80,
                      width: 400,
                      padding: EdgeInsets.only(left: 15, right: 10),
                      child: Text(
                        'The Appetizing Sea Food in Town, Perfectly Delicoius and Healthy..             ALWAYS FRESH, NEVER FROZEN\ ',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'myfont10',
                          fontSize: 20,
                        ),
                      ))
                ]),
            SizedBox(height: 10, width: 50),
            Padding(
              padding: EdgeInsets.only(top: 30),
              child: BottomNav(context),
            ),
          ])),
    );
  }
}

Widget RatingText(context) {
  return Row(children: <Widget>[
    Padding(
      padding: EdgeInsets.only(left: 2),
      child: Icon(
        Icons.star_border,
        color: Colors.red[400],
        size: 22,
      ),
    ),
    SizedBox(width: 2),
    Text(
      '4.5',
      style: TextStyle(
          fontFamily: 'myfont5',
          color: Colors.black,
          fontSize: 18,
          shadows: [
            Shadow(
              blurRadius: 1.2,
              color: Colors.red[200],
              offset: Offset(4.0, -5.0),
            )
          ]),
    ),
    SizedBox(
      height: 10,
    ),
    Padding(
        padding: EdgeInsets.only(left: 80),
        child: Icon(
          Icons.timer,
          color: Colors.red,
          size: 20,
        )),
    SizedBox(width: 3),
    Padding(
      padding: EdgeInsets.zero,
      child: Text(
        '18 min',
        style: TextStyle(
            fontFamily: 'myfont5',
            color: Colors.black,
            fontSize: 18,
            shadows: [
              Shadow(
                blurRadius: 1.2,
                color: Colors.cyan[200],
                offset: Offset(4.0, -5.0),
              )
            ]),
      ),
    ),
    SizedBox(
      height: 10,
    ),
    Padding(
        padding: EdgeInsets.only(left: 48),
        child: Icon(
          Icons.zoom_out_map,
          size: 20,
        )),
    SizedBox(
      width: 5,
    ),
    Positioned(
        right: 10,
        child: Text('2.3 Km',
            style: TextStyle(
                color: Colors.black,
                fontFamily: 'myfont5',
                fontSize: 20,
                shadows: [
                  Shadow(
                    blurRadius: 1.4,
                    offset: Offset(4.0, -5.0),
                    color: Colors.cyan[200],
                  ),
                ]))),
  ]);
}

Widget BottomNav(context) {
  double width = MediaQuery.of(context).size.width;

  return Container(
      width: width,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
        boxShadow: [
          BoxShadow(
            blurRadius: 2.0,
            offset: Offset(5, 6),
            color: Colors.pink[50],
          ),
        ],
        border: Border.all(
          color: Colors.lightGreen[100],
          style: BorderStyle.solid,
          width: 1.2,
        ),
      ),
      child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 30),
          child: Container(
              color: Colors.blue[100],
              child: Align(
                  alignment: Alignment.bottomLeft,
                  child: FloatingActionButton(
                    splashColor: Colors.red[200],
                    backgroundColor: Colors.pink[200],
                    onPressed: () {},
                    child: Text(
                      ' BUY',
                      style: TextStyle(
                        color: Colors.blue,
                        fontFamily: 'myfont9',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )))));
}
