import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:toast/toast.dart';
import 'package:uichallange/MenuCart.dart';

class MyBottomNav extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Card(
      color: Colors.white12,
        shape: RoundedRectangleBorder(

          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),

elevation: 30,


      child : Container(
       height : 50,
       width : 40,
       color: Colors.white30,

       child : Row(
  
       

         
          children: <Widget>[
             
      
            Image.asset('Assets/home.png',
            alignment: Alignment.bottomLeft,


color: Colors.redAccent,






     
       ),
     
           SizedBox(width: 60,),


           IconButton(
          onPressed: (){},

            icon : Image.asset('Assets/baggrey.png'),
            
            splashColor: Colors.redAccent,
            iconSize: 30,
           ),
           SizedBox(width: 60,),
        
        
        IconButton(
          onPressed: (){},

            icon : Image.asset('Assets/location.png'),
            
            
            iconSize: 30,
            



        ),
          SizedBox(width: 60,),
        
        IconButton(
          onPressed: (){},

            icon : Image.asset('Assets/profile.png'),
            
            
            iconSize: 30,
            



        ),

         ]

         
         )
         )
         )
         ;
         
  }





}