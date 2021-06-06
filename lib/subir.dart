import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

import 'Subir/auditif.dart';
import 'Subir/courants.dart';
import 'Subir/dentaire.dart';
import 'Subir/hospitalisation.dart';
import 'Subir/optique.dart';
import 'Widgets/FadeAnimation.dart';


class Subir extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: ListView(

       children: <Widget>[

         ClipPath(
           clipper: WaveClipperOne(),
           child: Container(
             height: MediaQuery.of(context).copyWith().size.height / 5.8,
             color: Color(0xFF056388),
             child: Row(
                 crossAxisAlignment: CrossAxisAlignment.center,
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: <Widget>[
                   SizedBox(height: 10,),
                   Text(" Je dois Subir",
                     style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700, fontFamily: "MuseoModerno", color: Colors.white),
                   ),
                 ]
             ),
           ),
         ),
          SizedBox(height: 5,),
          Center(
          child: Container(
          //padding: const EdgeInsets.all(8.0),
          color: Colors.white,
          child: Form(
          //key: _key,
          child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[

          SizedBox(
          height: 18,
          ),

          SizedBox(
          height: 80.0,
          width: 320,
          child: RaisedButton(
          shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0)),
          child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(width: 25,),
            Container(
              height: MediaQuery.of(context).copyWith().size.height / 32,
              width: MediaQuery.of(context).size.width /6.5,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      'assets/images/opti.png'),
                  fit: BoxFit.cover,
                ),
                shape: BoxShape.rectangle,
              ),
            ),
            SizedBox(width: 40,),
            Text("Optique",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400, fontFamily: "MuseoModerno", color: Colors.black),
          ),
          ]
          ),
          textColor: Color(0xFFED1E64),
          color: Color(0xFFED1E64),

          onPressed: (){
          Navigator.push(
          context,
          MaterialPageRoute(
          builder: (context) => Optique()),
          );
          },

          ),
          ),
          SizedBox(
          height: 18,
          ),

            SizedBox(
              height: 80.0,
              width: 320,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0)),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(width: 25,),
                      Container(
                        height: MediaQuery.of(context).copyWith().size.height / 12.5,
                        width: MediaQuery.of(context).size.width /7.9,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                'assets/images/tooth.png'),
                            fit: BoxFit.cover,
                          ),
                          shape: BoxShape.rectangle,
                        ),
                      ),
                      SizedBox(width: 50,),
                      Text("Dentaire",
                        style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400, fontFamily: "MuseoModerno", color: Colors.black),
                      ),
                    ]
                ),
                textColor: Color(0xFFED1E64),
                color: Color(0xFF00ADEF),

                onPressed: (){
                  Navigator.push(
          context,
          MaterialPageRoute(
          builder: (context) => Dentaire()),
          );
                },

              ),
            ),
          SizedBox(
          height: 18,
          ),

            SizedBox(
              height: 80.0,
              width: 320,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0)),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(width: 25,),
                      Container(
                        height: MediaQuery.of(context).copyWith().size.height / 10,
                        width: MediaQuery.of(context).size.width / 6,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                'assets/images/hospital.png'),
                            fit: BoxFit.cover,
                          ),
                          shape: BoxShape.rectangle,
                        ),
                      ),
                      SizedBox(width: 35,),
                      Text("Hospitalisation",
                        style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400, fontFamily: "MuseoModerno", color: Colors.black),
                      ),
                    ]
                ),
                textColor: Color(0xFFED1E64),
                color: Color(0xFFFFB600),

                onPressed: (){
                  Navigator.push(
          context,
          MaterialPageRoute(
          builder: (context) => Hospitalisation()),
          );
                },

              ),
            ),
          SizedBox(
          height: 18,
          ),

            SizedBox(
              height: 80.0,
              width: 320,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0)),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(width: 25,),
                      Container(
                        height: MediaQuery.of(context).copyWith().size.height /10,
                        width: MediaQuery.of(context).size.width / 6,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                'assets/images/ears.png'),
                            fit: BoxFit.cover,
                          ),
                          shape: BoxShape.rectangle,
                        ),
                      ),
                      SizedBox(width: 35,),
                      Text("Soins Auditifs",
                        style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400, fontFamily: "MuseoModerno", color: Colors.black),
                      ),
                    ]
                ),
                textColor: Colors.blue,
                color: Color(0xFF34BDB3),

                onPressed: (){
                  Navigator.push(
          context,
          MaterialPageRoute(
          builder: (context) => Auditif()),
          );
                },

              ),
            ),
          SizedBox(
          height: 18,
          ),

            SizedBox(
              height: 80.0,
              width: 320,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0)),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(width: 25,),
                      Container(
                        height: MediaQuery.of(context).copyWith().size.height / 11,
                        width: MediaQuery.of(context).size.width / 7,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                'assets/images/hosp.png'),
                            fit: BoxFit.cover,
                          ),
                          shape: BoxShape.rectangle,
                        ),
                      ),
                      SizedBox(width: 35,),
                      Text("Soins Courants",
                        style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400, fontFamily: "MuseoModerno", color: Colors.black),
                      ),
                    ]
                ),
                textColor: Colors.blue,
                color: Color(0xFFF16521),

                onPressed: (){
                  Navigator.push(
          context,
          MaterialPageRoute(
          builder: (context) => Courants()),
          );
                },

              ),
            ),
          SizedBox(
          height: 30,
          ),
          ],
          ),
          ),
          ),
          ),

  ],),
  );
}
}