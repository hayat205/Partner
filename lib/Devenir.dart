import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:sidebar_animation/Choix1.dart';
import 'package:sidebar_animation/Login.dart';
import 'package:sidebar_animation/Widgets/FadeAnimation.dart';
import 'package:sidebar_animation/bloc.navigation_bloc/navigation_bloc.dart';


class Devenir extends StatefulWidget with NavigationStates {
  @override
  State<StatefulWidget> createState() {
    return DevenirState();
  }
}

class DevenirState extends State<Devenir> {
  bool _visible = false;
  @override
  Widget build(BuildContext context) {
    //  final PageController controller = PageController(initialPage: 0);

    return Scaffold(

      body: ListView(
        children: <Widget>[

          Container(
            height: MediaQuery.of(context).copyWith().size.height / 1,
            width: MediaQuery.of(context).size.width / 1,

            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                ClipPath(
                  clipper: WaveClipperOne(),
                  child: Container(
                    height: MediaQuery.of(context).copyWith().size.height / 5,
                    color: Color(0xFF00ADEF),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(width: 5,),
                          Container(
                            height: MediaQuery.of(context).copyWith().size.height / 10,
                            width: MediaQuery.of(context).size.width /1.8,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/logo_new_partner_modified.png'),
                                fit: BoxFit.fill,
                              ),
                              shape: BoxShape.rectangle,
                            ),
                          ),

                        ]
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Positioned(
                  child: FadeAnimation(
                    1.6,
                    Container(
                    // height: MediaQuery.of(context).copyWith().size.height / 1,
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
                        'BIENVENUE CHEZ PARTNER',
                        style: TextStyle(color: Colors.lightBlue, fontSize: 21, fontWeight: FontWeight.w900, fontFamily: "VitalaRegular",),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                Positioned(
                  child: FadeAnimation(
                    1.6,
                    Container(
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
                        'Nous sommes enchantés !\nDécouvrez toutes les fonctionnalités que nous avons créées pour simplifier, économiser et décrypter l’assurance !\nCréez vite votre compte et rejoignez les 15 000 retraités et seniors déjà membres.  ',
                        style: TextStyle(
                          color: Color(0xFF494848),
                          fontSize: 14,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),

                Container(
                  height: MediaQuery.of(context).copyWith().size.height / 12,
                  width: MediaQuery.of(context).size.width / 1.2,
                  alignment: Alignment.centerRight,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFF00ADEF),
                          blurRadius: 2.0, // soften the shadow
                          spreadRadius: 1.0, //extend the shadow
                          offset: Offset(0.5, 0.5, ),)],
                      color: Color(0xFFFFFFFF),
                      border: Border.all(
                        color: Color(0xFFFFFFFF),
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                  padding: EdgeInsets.all(10.0),
                  child: TextFormField(
                    decoration: InputDecoration( border:InputBorder.none ,hintText: 'Votre prénom',
                    ),),),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: MediaQuery.of(context).copyWith().size.height / 12,
                  width: MediaQuery.of(context).size.width / 1.2,
                  alignment: Alignment.centerRight,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFF00ADEF),
                          blurRadius: 2.0, // soften the shadow
                          spreadRadius: 1.0, //extend the shadow
                          offset: Offset(0.5, 0.5, ),)],
                      color: Color(0xFFFFFFFF),
                      border: Border.all(
                        color: Color(0xFFFFFFFF),
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                  padding: EdgeInsets.all(10.0),
                  child: TextFormField(
                    decoration: InputDecoration( border:InputBorder.none ,hintText: 'Votre nom',
                    ),),),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: MediaQuery.of(context).copyWith().size.height / 12,
                  width: MediaQuery.of(context).size.width / 1.2,
                  alignment: Alignment.centerRight,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFF00ADEF),
                          blurRadius: 2.0, // soften the shadow
                          spreadRadius: 1.0, //extend the shadow
                          offset: Offset(0.5, 0.5, ),)],
                      color: Color(0xFFFFFFFF),
                      border: Border.all(
                        color: Color(0xFFFFFFFF),
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                  padding: EdgeInsets.all(10.0),
                  child: TextFormField(
                    decoration: InputDecoration( border:InputBorder.none ,hintText: 'Votre numéro de téléphone',
                    ),),),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: MediaQuery.of(context).copyWith().size.height / 12,
                  width: MediaQuery.of(context).size.width / 1.2,
                  alignment: Alignment.centerRight,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFF00ADEF),
                          blurRadius: 2.0, // soften the shadow
                          spreadRadius: 1.0, //extend the shadow
                          offset: Offset(0.5, 0.5, ),)],
                      color: Color(0xFFFFFFFF),
                      border: Border.all(
                        color: Color(0xFFFFFFFF),
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                  padding: EdgeInsets.all(10.0),
                  child: TextFormField(
                    decoration: InputDecoration( border:InputBorder.none ,hintText: 'Votre mot de passe',
                    ),),),
            SizedBox(
              height: 25,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).copyWith().size.height / 18,
                  width: MediaQuery.of(context).size.width / 1.6,
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                      color: Color(0xFF00ADEF),

                      borderRadius: BorderRadius.all(Radius.circular(30))
                  ),
                  child: FlatButton(

                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Login()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                        ),
                        Text('Soumettre',textAlign: TextAlign.center,),
                      ],
                    ),
                  ),
                ),

        ],
      ),



        ],
      ),
          ),],
      ),
    );
  }
}
