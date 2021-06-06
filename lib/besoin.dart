import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Besoin extends StatelessWidget {
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
                  "Besoin",
                  style: TextStyle(fontSize: 30, fontFamily: "Champagne&LimousinesBold", color: Colors.blue, fontWeight: FontWeight.w900),
                ),
              ],
            ),
            bottom: TabBar(
                indicatorColor: Colors.blue,
                indicatorSize: TabBarIndicatorSize.label,
                tabs: <Widget>[
                  Tab(child: Align(
                      alignment: Alignment.center,
                      child: Text("Service Contrat",
                        style: TextStyle(fontSize: 15, fontFamily: "Champagne&LimousinesBold", color: Colors.blue, fontWeight: FontWeight.w900),)),
                  ),
                  Tab(child: Align(
                      alignment: Alignment.center,
                      child: Text("Service Partenaire",
                        style: TextStyle(fontSize: 15, fontFamily: "Champagne&LimousinesBold", color: Colors.blue, fontWeight: FontWeight.w900),)),
                  ),

                ]
            ),
          ),
          body: ListView(),
        ),
        length: 2,
        initialIndex: 0,
      ),
    );
  }
}