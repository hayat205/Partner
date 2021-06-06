import 'package:flutter/material.dart';

class Propos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
        child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(height: 10,),
        Container(
          alignment: Alignment.topRight,
          height: MediaQuery.of(context).copyWith().size.height / 7,
          width: MediaQuery.of(context).size.width / 3.5,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/abdellah-nasri.jpg'),
              fit: BoxFit.contain,
            ),
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.blue,
                blurRadius: 2.0, // soften the shadow
                spreadRadius: 1.0, //extend the shadow
                offset: Offset(0.5, 0.5,),
              )
            ],
            color: Color(0xFFFFFFFF),
            border: Border.all(
              color: Color(0xFFFFFFFF),),),),

          Container(
            height: 400,
            width: 500,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  offset: Offset(2,2),
                  blurRadius: 5,
                  spreadRadius: 1.0,
                  color: Color(0xFFB0CCE1).withOpacity(0.15),
                ),
              ],
            ),
            margin: EdgeInsets.only(top: 10, left: 30, right: 30),
            padding: EdgeInsets.only(top: 10, left: 20, right: 20),
              //Nous sommes IACOM, une agence web qui vous accompagne dans la création de votre
              child: Text("«Vous offrir plus que de l’assurance est notre objectif au quotidien, tant par les offres de nos partenaires que par la qualité de nos services.\n"
                  " Nous recherchons avec conviction votre satisfaction et donc votre fidélité.\n"
                  " Pour ce faire, nous vous apportons des solutions sur mesure et nous nous engageons de façon commune avec la Silver Alliance pour le «bien vieillir au domicile». \n"
                  "Nos convictions vous garantissent un panel de solutions de qualités, un accompagnement au quotidien et un suivi personnalisé dans la durée. »\n"
                  " Abdellah Nasri P.D.G et Fondateur, Partner Conseils SARL ", style: TextStyle(fontSize: 16, fontFamily: "Champagne&LimousinesBold", color: Colors.black),textAlign: TextAlign.justify),
          ),
          SizedBox(height: 10),
      ],
        ),
        ),
        ),
    );
  }
}