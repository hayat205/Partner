import 'package:flutter/material.dart';
import 'package:sidebar_animation/Acceuil.dart';
import 'package:sidebar_animation/bloc.navigation_bloc/navigation_bloc.dart';
import 'package:sidebar_animation/sidebar/sidebar_layout.dart';



class MyHomePage extends StatelessWidget with NavigationStates {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SideBarLayout(),
    );
  }
}

class MyAcceuil extends StatelessWidget with NavigationStates {

      @override
      Widget build(BuildContext context) {
      return Scaffold(
          body: Container(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                Container(child: Acceuil()),
              ]
              ),
            ),
          ),
      );
  }
}