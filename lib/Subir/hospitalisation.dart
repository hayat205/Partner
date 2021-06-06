import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';




class Hospitalisation extends StatelessWidget {
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
              color: Color(0xFFFFB600),
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: 10,),
                    Container(
                      height: MediaQuery.of(context).copyWith().size.height / 10,
                      width: MediaQuery.of(context).size.width /4.5,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                              'assets/images/hospital.png'),
                          fit: BoxFit.fill,
                        ),
                        shape: BoxShape.rectangle,
                      ),
                    ),
                    SizedBox(width: 20,),
                    Text(" Hospitalisation",
                      style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700, fontFamily: "MuseoModerno", color: Colors.black),
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