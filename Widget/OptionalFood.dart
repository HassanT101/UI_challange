import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:toast/toast.dart';

class SmallFood extends StatelessWidget {
  @override
  final String icons;
  final String texts;

  SmallFood({
    this.icons,
    this.texts,
  });

  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Toast.show('wait', context);
        },
        child: Container(
            height: 200,
            width: 200,
            child: Stack(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 120,
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Container(
                          height: 100,
                          width: 200,
                          child: Column(
                            children: <Widget>[
                              Image.asset(icons),
                              SizedBox(
                                height: 10,
                              ),
                              Text('' + texts),
                              SizedBox(height: 10),
                            ],
                          )),
                    )
                  ],
                )
              ],
            )));
  }
}
