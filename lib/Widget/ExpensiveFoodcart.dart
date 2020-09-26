import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:uichallange/FoodDetail.dart';

class EatenFoods extends StatelessWidget {
  @override
  final String platter;
  final String restrent;
  final String price;
  final String foodie;

  EatenFoods({this.platter, this.price, this.restrent, this.foodie});

  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ExpandedFood(
                    cafe: restrent, 
                    pricesrate: price,
                    platterName: platter,
                    foodish: foodie)));
      },
      child: Container(
        child: Container(
            height: 240,
            width: 250,
            child: Stack(children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                      child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                              bottomLeft: Radius.elliptical(10, 20),
                              bottomRight: Radius.elliptical(20, 10),
                            ),
                          ),
                          elevation: 3.0,
                          child: Container(
                              height: 250,
                              width: 225,
                              child: Padding(
                                  padding:
                                      const EdgeInsets.only(top: 50.0, left: 5),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            EdgeInsets.only(left: 3, top: 30),
                                        child: Text(
                                          '' + platter,
                                          style: TextStyle(
                                            fontFamily: 'myfont12',
                                            fontSize: 19,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Icon(
                                            Icons.location_on,
                                            textDirection: TextDirection.ltr,
                                            size: 15,
                                            color: Colors.red,
                                          ),
                                          SizedBox(
                                            height: 4,
                                          ),
                                          Text(
                                            '' + restrent,
                                            style: TextStyle(
                                              fontFamily: 'myfont8',
                                              color: Colors.black38,
                                              fontSize: 15,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.only(top: 20, left: 10),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Icon(
                                              Icons.star,
                                              color: Colors.redAccent,
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Colors.redAccent,
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Colors.redAccent,
                                            ),
                                            Icon(
                                              Icons.star_half,
                                              color: Colors.redAccent,
                                            ),
                                            Icon(
                                              Icons.star_border,
                                              color: Colors.redAccent,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              top: 20, left: 10),
                                          child: Text(
                                            " \$$price",
                                            style: TextStyle(
                                              color: Colors.redAccent,
                                              fontSize: 20,
                                            ),
                                          )),
                                    ],
                                  )))))
                ],
              ),
              Align(
                alignment: Alignment.topCenter,
                child: CircleAvatar(
                  maxRadius: 45,
                  foregroundColor: Colors.amber,
                  backgroundImage: AssetImage(foodie),
                ),
              ),
            ])),
      ),
    );
  }
}
