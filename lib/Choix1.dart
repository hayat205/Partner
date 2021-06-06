import 'package:flutter/material.dart';
import 'package:sidebar_animation/bloc.navigation_bloc/navigation_bloc.dart';
import 'package:sidebar_animation/conseiller.dart';
import 'package:sidebar_animation/Type.dart';

class Choix extends StatefulWidget with NavigationStates{
  @override
  State<StatefulWidget> createState() {
    return ChoixState();
  }
}

class ChoixState extends State<Choix> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).copyWith().size.height / 1,

        width: MediaQuery.of(context).size.width / 1,

        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/partnerpaperasseBG.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
         children: <Widget>[
            Container(
              height: MediaQuery.of(context).copyWith().size.height / 6,
              width: MediaQuery.of(context).size.width / 2,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      'assets/images/imgLeft-modal.png'),
                  fit: BoxFit.fill,
                ),
                shape: BoxShape.rectangle,
              ),
            ),
            Container(
              height: MediaQuery.of(context).copyWith().size.height / 12,
              width: MediaQuery.of(context).size.width / 1.5,
              child: Text.rich(
                TextSpan(
                  text: 'Je souhaite faire mes recherches seul \n accompagné d\'', // default text style
                  children: <TextSpan>[
                    TextSpan(text: 'un assistant numérique', style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
              ),textAlign:TextAlign.center,
            ), ),
            Container(
              width: MediaQuery.of(context).size.width / 2,
              alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                // color: Colors.white, //background color of box
                BoxShadow(
                color: Colors.blue,
                blurRadius: 2.0, // soften the shadow
                spreadRadius: 1.0, //extend the shadow
                offset: Offset(
                0.5, // Move to right 10  horizontally
                0.5, // Move to bottom 10 Vertically
                ),
                )
                ],
                borderRadius: BorderRadius.all(Radius.circular(30))
                ),
              child: FlatButton(

                textColor: Colors.blue,
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Type()));
                },
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                Padding(
                padding: const EdgeInsets.all(10.0),
                child: Icon(Icons.arrow_forward_sharp, color: Colors.blue,),
              ),
                      Text('Commencer'),
                ],
                ),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: MediaQuery.of(context).copyWith().size.height / 6,
              width: MediaQuery.of(context).size.width / 2,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      'assets/images/speciliste.png'),
                  fit: BoxFit.fill,
                ),
                shape: BoxShape.rectangle,
              ),
            ),
            Container(
              height: MediaQuery.of(context).copyWith().size.height / 12,
              width: MediaQuery.of(context).size.width / 1.5,
              child: Text.rich(
                TextSpan(
                  text: 'Je souhaite effectuer mon étude avec\n ', // default text style
                  children: <TextSpan>[
                    TextSpan(text: 'un conseiller spécialiste', style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: ' pour\n m\'accompagner '),
                  ],
                ),textAlign:TextAlign.center,
              ), ),
            Container(
              width: MediaQuery.of(context).size.width / 2,
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    // color: Colors.white, //background color of box
                    BoxShadow(
                      color: Colors.blue,
                      blurRadius: 2.0, // soften the shadow
                      spreadRadius: 1.0, //extend the shadow
                      offset: Offset(
                        0.5, // Move to right 10  horizontally
                        0.5, // Move to bottom 10 Vertically
                      ),
                    )
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(30))
              ),
              child: FlatButton(
                textColor: Colors.blue,
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Conseiller()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Icon(Icons.arrow_forward_sharp, color: Colors.blue,),
                    ),
                    Text('Commencer'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}