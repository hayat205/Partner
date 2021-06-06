import 'package:flutter/material.dart';
import 'package:sidebar_animation/Visio.dart';
import 'package:sidebar_animation/bloc.navigation_bloc/navigation_bloc.dart';
import 'package:sidebar_animation/face.dart';
import 'package:sidebar_animation/telephonic.dart';


import 'Widgets/FadeAnimation.dart';

class Conseiller extends StatefulWidget with NavigationStates{
  @override
  State<StatefulWidget> createState() {
    return ConseillerState();
  }
}

class ConseillerState extends State<Conseiller> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        height: MediaQuery.of(context).copyWith().size.height / 1,
        width: MediaQuery.of(context).size.width / 1,

        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/partnerPROXIMITEBG.png"),
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
                      'assets/images/illustration1.png'),
                  fit: BoxFit.fill,
                ),
                shape: BoxShape.rectangle,
              ),
            ),
            Container(
              child: Text.rich(
                TextSpan(
                  text: 'Étudiez vos besoins en ', // default text style
                  children: <TextSpan>[
                    TextSpan(text: 'face à face', style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),textAlign:TextAlign.center,
              ), ),
            SizedBox(height: 10,),
            Container(
              height: MediaQuery.of(context).copyWith().size.height / 18,
              width: MediaQuery.of(context).size.width / 1.6,
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
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Face()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.arrow_forward_sharp, color: Colors.blue,),
                    ),
                    Text('Je prend Rendez-Vous'),
                  ],
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).copyWith().size.height / 6,
              width: MediaQuery.of(context).size.width / 2,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      'assets/images/illustration2.png'),
                  fit: BoxFit.fill,
                ),
                shape: BoxShape.rectangle,
              ),
            ),
            Container(
              child: Text.rich(
                TextSpan(
                  text: 'Interlocuter au ', // default text style
                  children: <TextSpan>[
                    TextSpan(text: 'Téléphone', style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),textAlign:TextAlign.center,
              ), ),
            SizedBox(height: 10,),
            Container(
              height: MediaQuery.of(context).copyWith().size.height / 18,
              width: MediaQuery.of(context).size.width / 1.6,
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
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Tel()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.arrow_forward_sharp, color: Colors.blue,),
                    ),
                    Text('Etre Rappeler'),
                  ],
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).copyWith().size.height / 6,
              width: MediaQuery.of(context).size.width / 2,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      'assets/images/illustration3.png'),
                  fit: BoxFit.fill,
                ),
                shape: BoxShape.rectangle,
              ),
            ),
            Container(

             child: Text.rich(
                TextSpan(
                  text: 'Par', // default text style
                  children: <TextSpan>[
                    TextSpan(text: ' Visio-Conférence', style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),textAlign:TextAlign.center,
              ), ),
            SizedBox(height: 10,),
            Container(
              height: MediaQuery.of(context).copyWith().size.height / 18,
              width: MediaQuery.of(context).size.width / 1.6,
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
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Visio()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.arrow_forward_sharp, color: Colors.blue,),
                    ),
                    Text('Je prend Rendez-Vous'),
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