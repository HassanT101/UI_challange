import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:toast/toast.dart';


class SmallFood extends StatelessWidget {
  @override
 
 final String icons;
 final String texts;

SmallFood({this.icons,this.texts,});
  
  
  Widget build(BuildContext context) {
     return GestureDetector(
       onTap: (){
         Toast.show('wait', context);

       },

     child :  Container(
        height : 130,
        width: 120,



  child :   Stack(
children: <Widget>[




Column(


crossAxisAlignment: CrossAxisAlignment.center,
  mainAxisAlignment: MainAxisAlignment.center,

children: <Widget>[
  
  Expanded(


    
    
   child :  Card(
  shape: RoundedRectangleBorder(
borderRadius: BorderRadius.only(

  topLeft: Radius.elliptical(20, 20),
  topRight: Radius.elliptical(20, 20),
)


  ),
  elevation: 3.0,
child: Container(
  height: 100,
  width: 130,

//   child  : Padding (
// padding: EdgeInsets.only(top: 2),

  child: Column(
    crossAxisAlignment: CrossAxisAlignment.center,
                       

children: <Widget>[
Align(
                alignment: Alignment.center,
                child: Image.asset(
                  icons,
                  height: 45,
                  width: 55,
                ),
                ),
                 SizedBox(height: 20,),

Text('' +texts,style: TextStyle(fontFamily: 'myfont8',fontSize: 15),),


],






  )






),




)




        )]) ],
),




      

      )); 
     
      


      
 


  
  
  }
  }
