import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:sidebar_animation/Widgets/FadeAnimation.dart';

import 'package:sidebar_animation/bloc.navigation_bloc/navigation_bloc.dart';
import 'question.dart';

import 'Pages/profil.dart';
import 'besoin.dart';
import 'subir.dart';

class Login extends StatefulWidget with NavigationStates{
  @override
  State<StatefulWidget> createState() {
    return LoginState();
  }
}

class LoginState extends State<Login> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: BottomNavigationBar(
        iconSize: 20,
        currentIndex: 0, // this will be set when a new tab is tapped
        items: [

          BottomNavigationBarItem(
            icon: Icon(Icons.home,color: Colors.blue),
            // ignore: deprecated_member_use
            title: Text('Accueil',style: TextStyle(fontSize: 10,color: Colors.blue),),),
          BottomNavigationBarItem(
            icon: Icon(Icons.description,color: Colors.blue),
            // ignore: deprecated_member_use
            title: Text('Documents',style: TextStyle(fontSize:10,color:Colors.blue)),),

          BottomNavigationBarItem(
            icon: new Icon(Icons.alarm,color: Colors.blue),
            // ignore: deprecated_member_use
            title: new Text('Mes Alarm',style: TextStyle(fontSize: 10,color: Colors.blue)),
          ),

        ],
      ),

        body: ListView(

          children: <Widget>[

                ClipPath(
                  clipper: WaveClipperOne(),
                  child: Container(
                    height: MediaQuery.of(context).copyWith().size.height / 3.5,
                    color: Color(0xFF00ADEF),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("\nMon Espace",
                            style: TextStyle(fontSize: 33, fontWeight: FontWeight.w700, fontFamily: "MuseoModerno", color: Colors.white),
                          ),
                        ]
                    ),
                  ),
                ),


            SizedBox(height: 20,),
            Center(
              child: Container(
                //padding: const EdgeInsets.all(8.0),
                color: Colors.white,
                child: Form(
                  //key: _key,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      SizedBox(
                        height: MediaQuery.of(context).copyWith().size.height / 30,
                      ),

                      SizedBox(
                        height: MediaQuery.of(context).copyWith().size.height / 12,
                        width: MediaQuery.of(context).size.width / 1.5,
                        child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.circular(50.0)),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Icon(Icons.person),
                                  SizedBox(
                                    width: 25,
                                  ),
                                  Text("Mon Profil",
                                    style: TextStyle(fontSize: 15, fontFamily: "MuseoModerno", color: Colors.blue),
                                  ),
                                ]
                            ),
                            textColor: Colors.blue,
                            color: Colors.white,
                          onPressed: (){

                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MonEspace()),
                            );
                          },

                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).copyWith().size.height / 30,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).copyWith().size.height / 12,
                        width: MediaQuery.of(context).size.width / 1.5,
                        child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.circular(50.0)),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Icon(Icons.blur_on),
                                  SizedBox(
                                    width: 25,
                                  ),
                                  Text("Je dois subir !",
                                    style: TextStyle(fontSize: 15, fontFamily: "MuseoModerno",color: Colors.blue),),

                                ]
                            ),
                            textColor: Colors.blue,
                            color: Colors.white,
                            onPressed: () {
                              Navigator.push(
                                context,

                                MaterialPageRoute(builder: (context) => Subir()),
                              );
                            }
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).copyWith().size.height / 30,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).copyWith().size.height / 12,
                        width: MediaQuery.of(context).size.width / 1.5,

                        child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.circular(50.0)),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Icon(Icons.work),
                                  SizedBox(
                                    width: 25,
                                  ),
                                  Text("J'a besoin",
                                    style: TextStyle(fontSize: 15, fontFamily: "MuseoModerno",color: Colors.blue),
                                  ),
                                ]
                            ),
                            textColor: Colors.blue,
                            color: Colors.white,
                            onPressed: () {
                              Navigator.push(
                                context,

                                MaterialPageRoute(builder: (context) => Besoin()),
                              );
                            }
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).copyWith().size.height / 30,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).copyWith().size.height / 12,
                        width: MediaQuery.of(context).size.width / 1.5,

                        child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.circular(50.0)),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Icon(Icons.question_answer_outlined),
                                  SizedBox(
                                    width: 25,
                                  ),
                                  Text("J'ai une question !",
                                    style: TextStyle(fontSize: 15, fontFamily: "MuseoModerno", color: Colors.blue),
                                  ),
                                ]
                            ),
                            textColor: Colors.blue,
                            color: Colors.white,

                            onPressed: () {
                              Navigator.push(
                                context,

                                MaterialPageRoute(builder: (context) => Question()),
                              );
                            }
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).copyWith().size.height / 30,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).copyWith().size.height / 12,
                        width: MediaQuery.of(context).size.width / 1.5,
                        child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.circular(50.0)),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Icon(Icons.lock_open),
                                  SizedBox(
                                    width: 25,
                                  ),
                                  Text("Se déconnecter",
                                    style: TextStyle(fontSize: 15, fontFamily: "MuseoModerno", color: Colors.blue),
                                  ),
                                ]
                            ),
                            textColor: Colors.blue,
                            color: Colors.white,
                            onPressed: () {
                              /*Navigator.push(
                                context,

                                MaterialPageRoute(builder: (context) => MonEspace(signOut)),
                              );*/
                            }
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).copyWith().size.height / 20,
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