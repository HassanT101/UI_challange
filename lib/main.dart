import 'package:flutter/material.dart';
import 'package:uichallange/MenuCart.dart';
import 'package:toast/toast.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  @override

  _HomeApp createState() => _HomeApp();
}

class _HomeApp extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {



 return MaterialApp(

      debugShowCheckedModeBanner: false,


        home: Builder(
          builder: (context) => starter(context)),

      routes: {

        '/carcustomer': (context) => Menucart(),
          '/navbar': (context) =>MyApp() ,
         
         
    
    },
    


    );
  }


   Widget starter(BuildContext context) {

  
    double height = MediaQuery.of(context).size.height;

return Scaffold(

        resizeToAvoidBottomInset: false,

       body: Stack(children: <Widget>[
          Container(
            //Background Image Hardcoded
            child: Image(
              image: AssetImage('Assets/background.png'),
               fit: BoxFit.fitHeight,
               height: 730,
            ),

          





     

    ),
    SizedBox(height: height* 0.10),
    Positioned(
      top: height *0.18,
      left: height *0.02,
  

   child :  Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: <Widget>[

  Text('Get', style: TextStyle(color: Colors.black,fontSize: 34,fontWeight :FontWeight.bold,
    fontFamily: 'myFont2',
  
  ),)


],

     ),




       ),
       SizedBox(height: height* 0.10),
        Positioned(
      top: height *0.26,
      left: height *0.02,
      
   child :  Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: <Widget>[

  Text('The Fatest', style: TextStyle(color: Colors.black,fontSize: 30,fontWeight :FontWeight.bold,
  fontFamily: 'myfont2'
    
    )
    ,)
       ]
       ),
        
     






       ),
SizedBox(height: height* 0.10),
   Positioned(
      top: height *0.34,
      left: height *0.02,
      
   child :  Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: <Widget>[

  Text('Delivery', style: TextStyle(color: Colors.black87,fontSize: 29,

   fontFamily: 'myfont2' 
   
   ),)
       ]
       ),
        

       
       
),



SizedBox(height: height* 0.10,),
 Positioned(
      top: height *0.42,
      left: height *0.03,
      
   child :  Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: <Widget>[

  Text('order food and get ', style: TextStyle(color: Colors.black,
  fontSize: 20,
  fontFamily: 'myfont5',
  
  
  ),)




])

),

SizedBox(height: height* 0.02,),
 Positioned(
      top: height *0.48,
      left: height *0.05,
      
   child :  Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: <Widget>[

  Text('Delivery in fatest time in Town', style: TextStyle(color: Colors.black,
  fontSize: 20,
   fontFamily: 'myfont5',
  
  ),)


]

)),

SizedBox(height: height* 0.10,),
 Positioned(
      top: height *0.56,
      left: height *0.02,
       
    
      child: MaterialButton(
        focusColor: Colors.deepOrange,
        splashColor: Colors.green,
       
        
        autofocus: true,
        elevation: 2.0,
        hoverColor: Colors.red,
        onLongPress: (){
              Toast.show('Wait', context, duration: Toast.LENGTH_LONG);
            },    
        shape:   StadiumBorder(
          side: BorderSide(
            width: height *0.01,
            
            
            color: Colors.orange),

        ),
        onPressed: () {
        
          Navigator.pushNamed(context, '/carcustomer');
        },
        
      
        color: Colors.orange,
        child: Text(
          'Get started',
          style: TextStyle(color: Colors.white, fontSize: 18, fontFamily: 'myfont12' ),

        ),
      ),
 ),
 SizedBox(height: height*0.10,),
 
 Positioned(
   height: height* 0.98,
   left : height *0.09,
 child : Column(
   mainAxisAlignment: MainAxisAlignment.end,
children: <Widget>[
  
  Image(
              image: AssetImage('Assets/delievery.png'),
               fit: BoxFit.fitHeight,
               height: height * 0.28,
               alignment: Alignment.bottomLeft,

  )],



 )

 
 )
 
       ]));
 
 
      






          
         
          


       
       
 
   
   }
}