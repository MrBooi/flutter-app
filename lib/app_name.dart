import 'package:flutter/material.dart';

class  AppName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return  Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 8.0,bottom: 80.0),
                  child: Text('Quick Bee',style: TextStyle(fontSize: 30.0),) ,
                )
              ],
            ) ;
  }
 
 
  
}