import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

import 'package:uichallange/Widget/OptionalFood.dart';
import 'package:uichallange/Widget/ExpensiveFoodcart.dart';
import 'package:uichallange/Widget/BottomNAV.dart';

class Menucart extends StatefulWidget {
  _MenucartState createState() => _MenucartState();
}

class _MenucartState extends State<Menucart> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: true,
      resizeToAvoidBottomPadding: true,
      bottomNavigationBar: MyBottomNav(),
      body: Stack(alignment: Alignment.topLeft, children: <Widget>[
        Container(
          color: Color(0xFFB2DFDB),
          height: 760,
        ),
        Positioned(
            left: height * (0.010),
            height: height * 0.20,
            top: height * 0.070,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: AssetImage('Assets/avatar.png'),
                    maxRadius: 23,
                  ),
                ])),
        Positioned(
            height: height * 0.11,
            top: height * 0.080,
            left: height * 0.09,
            child: Text(
              'How Hungry are You Today ?',
              style: TextStyle(
                fontFamily: 'myfont9',
                fontSize: 20,
              ),
            )),
        Positioned(
            height: height * 0.10,
            top: height * 0.12,
            left: height * 0.02,
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: height * 0.02, vertical: height * 0.02),
                    child: searchBar(context),
                  ),
                ])),
        Positioned(
            height: height * 0.06,
            top: height * 0.137,
            left: height * 0.42,
            child: Container(
              height: 0.01,
              width: height * 0.06,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(10),
              ),
              child: FlatButton(
                onPressed: () {},
                child: Icon(
                  Icons.menu,
                  size: 20,
                ),
              ),
            )),
        SizedBox(
          height: height * 0.10,
        ),
        Padding(
          padding: EdgeInsets.only(top: 150),
          child: smallCart(),
        ),
        Positioned(
          height: height * 0.70,
          top: height * 0.40,
          child: Container(
              height: height * 0.50,
              width: height * 0.50,
              color: Colors.white70,
              child: Column(children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: height * 0.050, vertical: height * 0.080),
                      child: Text(
                        'Popular Food',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'myfont6',
                            fontSize: 20),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.09,
                    ),
                    Positioned(
                      right: height * 0.09,
                      top: height * 0.09,
                      child: FlatButton(
                        color: Colors.transparent,
                        onPressed: () {},
                        child: Text(
                          'Veiw All',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 19,
                            fontFamily: 'myfont12',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ])),
        ),
        Padding(
          padding: EdgeInsets.only(top: 400),
          child: LargeCart(),
        ),
      ]),
    );
  }

  Widget searchBar(context) {
    double height = MediaQuery.of(context).size.height;
    return Row(children: <Widget>[
      SizedBox(
        height: height * 0.2,
      ),
      Container(
          height: 100,
          width: height * 0.37,
          color: Colors.white70,
          child: TextFormField(
              autocorrect: true,
              autofocus: false,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white38, width: 2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  hintText: "Search Food Items",
                  hintStyle: TextStyle(color: Colors.black))))
    ]);
  }

  Widget smallCart() {
    double height = MediaQuery.of(context).size.height;
    return Container(
        height: height * 0.20,
        width: height,
        child: ListView(
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            children: <Widget>[
              SmallFood(
                icons: 'Assets/pizza.png',
                texts: 'Pizzas',
              ),
              SizedBox(
                height: height * 0.24,
              ),
              SmallFood(
                icons: 'Assets/salad.png',
                texts: 'Salad',
              ),
              SizedBox(
                height: height * 0.20,
              ),
              SmallFood(
                icons: 'Assets/shake.png',
                texts: 'Shake',
              ),
            ]));
  }

  Widget LargeCart() {
    double height = MediaQuery.of(context).size.height;
    return Container(
        height: height * 0.36,
        width: height * 0.70,
        child: ListView(
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            children: <Widget>[
              // child: Row(
              //   children: <Widget>[
              EatenFoods(
                foodie: 'Assets/PLate1.png',
                platter: "Sea Platter",
                restrent: 'maratine Star resturent',
                price: "120.5",
              ),
              EatenFoods(
                foodie: 'Assets/PLate2.png',
                platter: "Chicken Wing",
                restrent: 'Quetta Cafe',
                price: "100",
              )
            ]));
  }
}
