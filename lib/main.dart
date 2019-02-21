import 'package:flutter/material.dart';
import 'package:quick_bee/app_name.dart';
import 'package:quick_bee/login.dart';
import 'package:quick_bee/stacked_icons.dart';

void main () => runApp(QuickBee());

class QuickBee extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      title: 'Quick Bee',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Roboto'),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            StackedIcons()
            ,
            AppName()
           ,
            Row(
              children: <Widget>[
               Expanded(
                 child :Padding(
                 padding: const EdgeInsets.only(left:20.0,right: 10.0,top:10.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                    builder: (context) => LoginPage(),
                  ));
                  },
                  child: Container(
                  alignment: Alignment.center,
                  height:70.0,
                  decoration: BoxDecoration(
                  color: Color(0xFF18D191),
                  borderRadius: BorderRadius.circular(10.0),
                  ),child: Text("Sign In With Email",style: TextStyle(fontSize: 20.0,color: Colors.white),),
                ) ,
                )  ,
               ))
                 
              ], 
            ),


            Row(
              children: <Widget>[
               Expanded(
                 child :Padding(
                padding: const EdgeInsets.only(left:20.0,right: 5.0,top:10.0),
                child:Container(
                  alignment: Alignment.center,
                  height:70.0,
                  decoration: BoxDecoration(
                  color: Color(0xFF4364A1),
                  borderRadius: BorderRadius.circular(10.0),
                  ),child: Text("Facebook",style: TextStyle(fontSize: 20.0,color: Colors.white),),
                ) ,
               ),),


                Expanded(
                 child :Padding(
                padding: const EdgeInsets.only(left:10.0,right: 10.0,top:10.0),
                child:Container(
                  alignment: Alignment.center,
                  height:70.0,
                  decoration: BoxDecoration(
                  color: Color(0xFFDF513B),
                  borderRadius: BorderRadius.circular(10.0),
                  ),child: Text("Google",style: TextStyle(fontSize: 20.0,color: Colors.white),),
                ) ,
               ),)
               
                 
              ],
               
            )
          ],
        ),
      ),
    );
  }

}