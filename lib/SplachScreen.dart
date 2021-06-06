import 'dart:async' show Timer;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sidebar_animation/Acceuil.dart';
import 'package:sidebar_animation/Loader.dart';
import 'package:sidebar_animation/sidebar/sidebar_layout.dart';


class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SplashState();
  }
}
class SplashState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
  }
  startTime() async {
    var duration = new Duration(seconds: 5);
    return new Timer(duration, route);
  }
  route() {
    Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => Acceuil()
    )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).copyWith().size.height / 1,
        width: MediaQuery.of(context).size.width / 1,
        decoration: BoxDecoration(
          color: Colors.blue,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).copyWith().size.height / 5,
              width: MediaQuery.of(context).size.width / 1.2,
              decoration: BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(
                  image: AssetImage("assets/images/logo_new_partner_modified.png"),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Container(
              child: Text(
                '\n \n \n ',
                style: TextStyle(color: Colors.blue, fontSize: 60,),
              ),
            ),


            Container(
              child: Loader(),
            ),

          ],
        ),
      ),
    );
  }
}
