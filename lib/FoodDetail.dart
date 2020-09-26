import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:uichallange/Widget/ExpensiveFoodcart.dart';
import 'Widget/DetailFoods.dart';

class ExpandedFood extends StatelessWidget {
//It will define the page of food details of Large cart

//These are the new class variables taking value from parent class
  final String platterName;
  final String foodish;
  final String cafe;
  final String pricesrate;
  final String overveiw;
//This is the parent class variables which will give the child class vraible,
//a value, design in dart desoigning class DEtail foods

// All values will be get from the parent class
  final EatenFoods foodie; // Image
  final EatenFoods platter; // Platter name Eg sea platter
  final EatenFoods restrent; // Cafe Name
  final EatenFoods price;
  // Price of item

  final DetailFoods foodies;
  final DetailFoods platters;
  final DetailFoods restrents;
  final DetailFoods prices;

  ExpandedFood({
//these are the current class atributes
    this.cafe,
    this.platterName,
    this.overveiw,
    this.pricesrate,
    this.foodish,
//These are the parent class(Eaten Food) variables
    this.foodie,
    this.platter,
    this.restrent,
    this.price,

    this.foodies,
    this.platters,
    this.restrents,
    this.prices,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        body: SafeArea(
          child: Container(
              color: Colors.white,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Positioned(
                            child: foodInfo(),
                         ) ],
                    ),
                  )
                ],
              )),
        ));
  }

  Widget foodInfo() {
    return Column(children: <Widget>[
      DetailFoods(),
        // this.foodies,
        // this.platters,
        // this.prices,
        // this.restrents,
      

        ]
      );

  }
}
//  foodish
//  platterName,
//  prices,
//  cafe

