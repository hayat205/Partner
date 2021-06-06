import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';




class Dentaire extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView(

        children: <Widget>[

          //SizedBox(height: 10.0,),
          ClipPath(
            clipper: WaveClipperOne(),
            child: Container(
              height: MediaQuery.of(context).copyWith().size.height / 5.8,
              color: Color(0xFF00ADEF),
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(width: 25,),
                    Container(
                      height: MediaQuery.of(context).copyWith().size.height / 11.5,
                      width: MediaQuery.of(context).size.width /6.9,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                              'assets/images/tooth.png'),
                          fit: BoxFit.fill,
                        ),
                        shape: BoxShape.rectangle,
                      ),
                    ),
                    SizedBox(width: 40,),
                    Text("Dentaire",
                      style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700, fontFamily: "MuseoModerno",  color: Colors.black),
                    ),
                  ]
              ),
            ),
          ),
          SizedBox(height: 20,),
        ],
      ),
    );
  }
}