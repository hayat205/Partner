import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:sidebar_animation/Widgets/FadeAnimation.dart';
import 'package:sidebar_animation/Widgets/FadeAnimation.dart';
//import 'package:partner/Pages/sidebar/login/FadeAnimation.dart';



class MonEspace extends StatefulWidget {
  //final email;

  @override
  _MonEspaceState createState() => _MonEspaceState();
}

class _MonEspaceState extends State<MonEspace> {
  signOut() {
    setState(() {
     // widget.signOut();
    });
  }



  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          //shrinkWrap: true,
          //padding: EdgeInsets.all(15.0),
          children: <Widget>[
            Center(
              child: Container(
                //padding: const EdgeInsets.all(8.0),
                color: Colors.white,
                child: Form(
                  //key: _key,a
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                  ClipPath(
                  clipper: WaveClipperOne(),
                  child: Container(
                    height: MediaQuery.of(context).copyWith().size.height / 4,
                    color: Color(0xFF00ADEF),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(height: 10,),
                          Text(" Mon Profil",
                            style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700, fontFamily: "MuseoModerno", color: Colors.white),
                          ),
                        ]
                    ),
                  ),
                ),

                      SizedBox(
                        height: 40,
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(

                            Icons.person,
                            color: Color(0xFF00ADEF),
                            size: 30.0,
                                ),
                          SizedBox(
                            height: 50,
                          ),

                          Text("  Aurélien Colinot",style: TextStyle(fontSize: 20.0
                          ),)
                        ],
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(

                            Icons.settings_phone,
                            color: Color(0xFF00ADEF),
                            size: 30.0,
                            semanticLabel: 'Text to announce in accessibility modes',
                          ),
                          SizedBox(
                            height: 50,
                          ),

                          Text("  0142942037",style: TextStyle(fontSize: 20.0
                          ),)
                        ],
                      ),
                      SizedBox(
                        height: 70,
                      ),
                      SizedBox(
                        height: 44.0,

                        width: 250,
                        child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0)
                            ),
                            child: Text("Modifier profil", style: TextStyle(fontSize: 15, fontFamily: "Champagne&LimousinesBold", color: Colors.white),),
                            textColor: Colors.white,
                            color: Color(0xFF00ADEF),
                            onPressed: () {
                             // Navigator.push(
                               // context,
                               // MaterialPageRoute(builder: (context) => Edit(id, email, name, mobile, password)),
                            //  );
                            }
                        ),
                      ),
                      SizedBox(
                        height: 100,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}