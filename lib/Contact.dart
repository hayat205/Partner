import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sidebar_animation/contact_option_pages/a_propos.dart';
import 'package:sidebar_animation/contact_option_pages/gps.dart';
import 'package:sidebar_animation/contact_option_pages/horaires.dart';
import 'bloc.navigation_bloc/navigation_bloc.dart';


class Contact extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: DefaultTabController(
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              automaticallyImplyLeading: false,
              elevation: 5,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  //IconButton(icon: Icon(Icons.menu), color: Colors.white),
                  Text(
                    "PARTNER",
                    style: TextStyle(fontSize: 30, fontFamily: "Champagne&LimousinesBold", color: Colors.blue, fontWeight: FontWeight.w900),
                  ),
                ],
              ),
              bottom: TabBar(
                indicatorColor: Colors.blue,
                indicatorSize: TabBarIndicatorSize.label,
                  tabs: <Widget>[
                    Tab(child: Align(
                        alignment: Alignment.centerRight,
                        child: Text("A PROPOS",
                          style: TextStyle(fontSize: 12, fontFamily: "Champagne&LimousinesBold", color: Colors.black, fontWeight: FontWeight.w900),)),
                    ),
                    Tab(child: Align(
                        alignment: Alignment.center,
                        child: Text("HORORAIRES",
                          style: TextStyle(fontSize: 12, fontFamily: "Champagne&LimousinesBold", color: Colors.black, fontWeight: FontWeight.w900),)),
                    ),
                    Tab(child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text("PLAN D'ACCES",
                          style: TextStyle(fontSize: 12, fontFamily: "Champagne&LimousinesBold", color: Colors.black, fontWeight: FontWeight.w900),)),
                    ),
                  ]
              ),
            ),
            body: TabBarView(
              children: <Widget>[
                Propos(),
                Horaires(),
                PlanAcces(),
              ],
            ),
          ),
          length: 3,
          initialIndex: 0,
        ),
    );
  }
}