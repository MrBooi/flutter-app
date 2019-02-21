import 'package:flutter/material.dart';
import 'package:quick_bee/app_name.dart';
import 'package:quick_bee/home.dart';
import 'package:quick_bee/stacked_icons.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Color(0xFF18D191)),
      ),
      body: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              StackedIcons(),
              AppName(),
              SizedBox(
                height: 15.0,
              ),
              Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
                  child: TextField(
                    decoration: InputDecoration(labelText: "Email"),
                  )),
              SizedBox(
                height: 15.0,
              ),
              Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(labelText: "Password"),
                  )),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 20.0, right: 5.0, top: 10.0),
                      child: GestureDetector(
                         onTap: () {
                       Navigator.push(context, MaterialPageRoute(
                         builder: (context) => HomePage(),
                         ));
                         },
                        child:   Container(
                        alignment: Alignment.center,
                        height: 70.0,
                        decoration: BoxDecoration(
                          color: Color(0xFF18D191),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Text(
                          "Login",
                          style: TextStyle(fontSize: 20.0, color: Colors.white),
                        ),
                      )
                      )
                    ),
                  ),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.only(
                        left: 10.0, right: 10.0, top: 10.0),
                    child: Container(
                      alignment: Alignment.center,
                      height: 60.0,
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Color(0xFF18D191),
                        ),
                      ),
                    ),
                  ))
                ],
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(bottom: 18.0),
                      child: Text(
                        "create New Account",
                        style: TextStyle(
                            color: Color(0xFF18D191),
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
