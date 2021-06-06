import 'package:flutter/material.dart';
import 'package:sidebar_animation/Widgets/FadeAnimation.dart';
import 'package:sidebar_animation/bloc.navigation_bloc/navigation_bloc.dart';
import 'package:sidebar_animation/form.dart';


class Type extends StatefulWidget with NavigationStates{
  @override
  State<StatefulWidget> createState() {
    return TypeState();
  }
}

class TypeState extends State<Type> {
  bool _visible = false;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).copyWith().size.height / 1,
            width: MediaQuery.of(context).size.width / 1,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/partnerassurBG.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                Positioned(
                  child: FadeAnimation(
                    1.6,
                    Container(
                      //height: MediaQuery.of(context).copyWith().size.height / 6,
                      width: MediaQuery.of(context).size.width / 1.2,
                      alignment: Alignment(0.0, 0.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Color(0xFFFFFFFF),
                          width: 2.0,
                        ),
                      ),
                      child: Text(
                        'Bonjour! Vous pouvez choir le type d\'étude dont vous avez besoin . ',
                        style: TextStyle(
                          color: Colors.lightBlue,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 10,
                ),
                Positioned(
                  child: FadeAnimation(
                    1.6,
                    Container(
                      width: MediaQuery.of(context).size.width / 1.85,
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
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: FlatButton(
                        color: Colors.transparent,
                        textColor: Colors.lightBlue,
                        onPressed: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => FormScreen()));
                        },
                        child: Text('Savoir le tarif de mes besoins !'),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Positioned(
                  child: FadeAnimation(
                    1.6,
                    Container(
                      width: MediaQuery.of(context).size.width / 1.85,
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
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: FlatButton(
                        color: Colors.transparent,
                        textColor: Colors.lightBlue,
                        onPressed: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => FormScreen()));
                        },
                        child: Text('Comparer le tarif de mes besoins avec mon TG !'),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Positioned(
                  child: FadeAnimation(
                    1.6,
                    Container(
                      width: MediaQuery.of(context).size.width / 1.85,
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
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: FlatButton(
                        color: Colors.transparent,
                        textColor: Colors.lightBlue,
                        onPressed: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => FormScreen()));
                        },
                        child: Text('Comparer mon TG avec partner !'),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
