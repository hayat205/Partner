
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:sidebar_animation/Choix1.dart';
import 'package:sidebar_animation/Deja.dart';
import 'package:sidebar_animation/Devenir.dart';
import 'package:sidebar_animation/bloc.navigation_bloc/navigation_bloc.dart';
import 'package:sidebar_animation/sidebar/sidebar_layout.dart';


class HomePage extends StatelessWidget with NavigationStates {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.white,
      ),
      home: SideBarLayout(),
    );
  }
}

class Acceuil extends StatelessWidget with NavigationStates{
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
            title: Text('Accueil',style: TextStyle(fontSize: 10,color:Colors.blue),),),
          BottomNavigationBarItem(
            icon: Icon(Icons.description,color: Colors.blue),
            // ignore: deprecated_member_use
            title: Text('Documents',style: TextStyle(fontSize:10,color:Colors.blue)),),

          BottomNavigationBarItem(
            icon: new Icon(Icons.alarm,color: Colors.blue),
            // ignore: deprecated_member_use
            title: new Text('Mes Alarmes',style: TextStyle(fontSize: 10,color: Colors.blue)),
          ),

        ],
      ),
      body: ListView(
       // mainAxisAlignment: MainAxisAlignment.center,
        children: [

          CarouselSlider(
            items: [
              //1st Image of Slider
              Container(
                height: MediaQuery.of(context).copyWith().size.height / 1.5,
                width: MediaQuery.of(context).size.width / 0.9,
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(

                  color: Colors.transparent,

                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage("assets/images/partnerPROXIMITEBG.png"),
                    fit: BoxFit.scaleDown,
                  ),
                ),

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children:<Widget>[
                   Container(
                     height: MediaQuery.of(context).copyWith().size.height / 3,
                     width: MediaQuery.of(context).size.width / 1.5,
                    decoration: BoxDecoration(

                     // borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: AssetImage("assets/images/partnerPROXIMITE.png"),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),

                Container(
                  height: MediaQuery.of(context).copyWith().size.height / 6,
                  width: MediaQuery.of(context).size.width / 1.4,
                  decoration: BoxDecoration(
                    //borderRadius: BorderRadius.circular(8.0),
                  ),child: Text.rich(
                  TextSpan(
                    children: <TextSpan>[
                      TextSpan( text:'Tout commence par un',
                        style: TextStyle(color: Color(0xFF494848), fontSize: 14, fontWeight: FontWeight.bold,fontFamily: "Vitali",),),
                      TextSpan( text:' Bonjour',
                        style: TextStyle(color: Color(0xFF34BDB3), fontSize: 14, fontWeight: FontWeight.bold,fontFamily: "Vitali",),),
                      TextSpan( text:' ! \nNe bougez pas, on vient à vous !\n\n',
                        style: TextStyle(color: Color(0xFF494848), fontSize: 14, fontWeight: FontWeight.bold,fontFamily: "Vitali",),),
                      TextSpan( text: 'Nos conseillers se déplacent dans toute la France pour vous rencontrer. Ensemble, vérifions que vos contrats actuels couvrent vos besoins, envies et attentes.',
                        style: TextStyle(color: Color(0xFF494848), fontSize: 12.5, fontFamily: "Vitali",),
                      ),
                    ],),
                  textAlign: TextAlign.justify,
                ),

                ),
                ],),
              ),

              //4th Image of Slider
              Container(
                height: MediaQuery.of(context).copyWith().size.height / 1.5,
                width: MediaQuery.of(context).size.width / 0.9,
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage("assets/images/partnerassurBG.png"),
                    fit: BoxFit.scaleDown,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children:<Widget>[
                    Container(
                      height: MediaQuery.of(context).copyWith().size.height / 3,
                      width: MediaQuery.of(context).size.width / 1.5,
                      decoration: BoxDecoration(

                        // borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: AssetImage("assets/images/partnerASSUR.png"),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),

                    Container(
                      height: MediaQuery.of(context).copyWith().size.height / 6,
                      width: MediaQuery.of(context).size.width / 1.4,
                      decoration: BoxDecoration(
                        //borderRadius: BorderRadius.circular(8.0),
                      ),child: Text.rich(
                      TextSpan(
                        children: <TextSpan>[
                          TextSpan( text:'Partner Assur’ et vous ',
                            style: TextStyle(color: Color(0xFF494848), fontSize: 14, fontWeight: FontWeight.bold,fontFamily: "Vitali",),),
                          TextSpan( text:'Rassure ',
                            style: TextStyle(color: Color(0xFF056388), fontSize: 14, fontWeight: FontWeight.bold,fontFamily: "Vitali",),),
                          TextSpan( text:'! \n',
                            style: TextStyle(color: Color(0xFF494848), fontSize: 14, fontWeight: FontWeight.bold,fontFamily: "Vitali",),),
                          TextSpan( text: 'Nous échangeons ensemble sur les besoins qui vous sont propres pour comparer les meilleures mutuelles en termes de prix et d\'utilité pour être toujours au plus proche de ce qui est réellement nécessaire pour vous.',
                            style: TextStyle(color: Color(0xFF494848), fontSize: 12.5, fontFamily: "Vitali",fontWeight: FontWeight.w500,),
                          ),
                        ],),
                      textAlign: TextAlign.justify,
                    ),

                    ),
                  ],),
              ),
              //2nd Image of Slider
              Container(
                height: MediaQuery.of(context).copyWith().size.height / 1.5,
                width: MediaQuery.of(context).size.width / 0.9,
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(

                    // color: Colors.white, //background color of box

                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage("assets/images/partnerpaperasseBG.png"),
                    fit: BoxFit.scaleDown,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children:<Widget>[
                    Container(
                      height: MediaQuery.of(context).copyWith().size.height / 3,
                      width: MediaQuery.of(context).size.width / 1.5,
                      decoration: BoxDecoration(

                        // borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: AssetImage("assets/images/partnerPAPERASSE.png"),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),

                    Container(
                      height: MediaQuery.of(context).copyWith().size.height / 6,
                      width: MediaQuery.of(context).size.width / 1.4,
                      decoration: BoxDecoration(
                        //borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Text.rich(
                        TextSpan(
                          children: <TextSpan>[
                            TextSpan( text:'On s\'occupe de vous, et de ',
                              style: TextStyle(color: Color(0xFF494848), fontSize: 14, fontWeight: FontWeight.bold, fontFamily: "Vitali",),),
                            TextSpan( text:'tout',
                              style: TextStyle(color: Color(0xFFED1E64), fontSize: 14, fontWeight: FontWeight.bold, fontFamily: "Vitali",),),
                            TextSpan( text:' !\n',
                              style: TextStyle(color: Color(0xFF494848), fontSize: 14, fontWeight: FontWeight.bold, fontFamily: "Vitali",),),
                            TextSpan( text: 'On s\'occupe de toutes les procédures administratives et sommes en contact direct avec les différents organismes. Tout est pris en charge, de la résiliation de votre ancienne mutuelle à l\’entière gestion de vos contrats en assurance.',
                              style: TextStyle(color: Color(0xFF494848), fontSize: 12.5, fontFamily: "Vitali",),
                            ),
                          ],),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ],),
              ),

              //3rd Image of Slider
              Container(
                height: MediaQuery.of(context).copyWith().size.height / 1.5,
                width: MediaQuery.of(context).size.width / 0.9,
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage("assets/images/partnermembresBG.png"),
                    fit: BoxFit.scaleDown,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children:<Widget>[
                    Container(
                      height: MediaQuery.of(context).copyWith().size.height / 3,
                      width: MediaQuery.of(context).size.width / 1.5,
                      decoration: BoxDecoration(

                        // borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: AssetImage("assets/images/partnermembres.png"),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),

                    Container(
                      height: MediaQuery.of(context).copyWith().size.height / 6,
                      width: MediaQuery.of(context).size.width / 1.4,
                      decoration: BoxDecoration(
                        //borderRadius: BorderRadius.circular(8.0),
                      ),child: Text.rich(
                      TextSpan(
                        children: <TextSpan>[
                          TextSpan( text:'Des avantages ',
                            style: TextStyle(color: Color(0xFF494848), fontSize: 14, fontWeight: FontWeight.bold, fontFamily: "Vitali",),),
                          TextSpan( text:'assurés',
                            style: TextStyle(color: Color(0xFFF16521), fontSize: 14, fontWeight: FontWeight.bold, fontFamily: "Vitali",),),
                          TextSpan( text:' !\n',
                            style: TextStyle(color: Color(0xFF494848), fontSize: 14, fontWeight: FontWeight.bold, fontFamily: "Vitali",),),
                          TextSpan( text: 'En partageant votre expérience du service Partner, nous nous engageons à vous dire merci comme il se doit. Des récompenses, des services supplémentaires et des rémunérations sont mises en place pour ceux qui contribuent à l’agrandissement de la famille Partner.',
                            style: TextStyle(color: Color(0xFF494848), fontSize: 12.5, fontFamily: "Vitali",),
                          ),
                        ],),
                      textAlign: TextAlign.justify,
                    ),
                    ),
                  ],),
              ),


            ],

            //Slider Container properties
            options: CarouselOptions(
              height: MediaQuery.of(context).copyWith().size.height /1.5,
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(seconds: 4),
              viewportFraction: 0.9,
            ),
          ),

          SizedBox(height: 10,),

             Column(
              children:<Widget> [
                SizedBox(height: 30,),
                Container(
                  height: MediaQuery.of(context).copyWith().size.height / 16,
                  width: MediaQuery.of(context).size.width / 1.785,
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFF056388),
                          blurRadius: 2.0, // soften the shadow
                          spreadRadius: 1.0, //extend the shadow
                          offset: Offset(0.5, 0.5, ),)],
                      color: Color(0xFFFFFFFF),
                      border: Border.all(
                        color: Color(0xFFFFFFFF),
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: FlatButton(
                    color: Colors.white,
                    textColor: Color(0xFF056388),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Devenir()));
                    },
                    child: Text('Devenir membre', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,)),
                  ),
                ),
                SizedBox(height: 10,),
                 Container(
                   height: MediaQuery.of(context).copyWith().size.height / 16,
                  width: MediaQuery.of(context).size.width / 1.785,
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFF34BDB3),
                          blurRadius: 2.0, // soften the shadow
                          spreadRadius: 1.0, //extend the shadow
                          offset: Offset(0.5, 0.5, ),)],
                      color: Color(0xFFFFFFFF),
                      border: Border.all(
                        color: Color(0xFFFFFFFF),
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: FlatButton(
                    color: Colors.white,
                    textColor: Color(0xFF34BDB3),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Deja()));
                    },
                    child: Text('Déja membre', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,)),
                  ),),
                Container(
                  height: MediaQuery.of(context).copyWith().size.height / 1.5,
                  width: MediaQuery.of(context).size.width / 0.9,
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(

                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: AssetImage("assets/images/HEADER.png"),
                      fit: BoxFit.contain,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:<Widget>[
                      SizedBox(height: 40,),
                      Container(
                        height: MediaQuery.of(context).copyWith().size.height / 6,
                        width: MediaQuery.of(context).size.width / 1.4,
                        decoration: BoxDecoration(
                          //borderRadius: BorderRadius.circular(8.0),
                        ),child: Text.rich(
                        TextSpan(
                          children: <TextSpan>[
                            TextSpan( text:'ÊTES-VOUS BIEN ASSURÉ ?\n\n',
                              style: TextStyle(color: Color(0xFF00ADEF), fontSize: 18, fontWeight: FontWeight.bold, fontFamily: "Vitali",),),
                           TextSpan( text: 'Partner ',
                              style: TextStyle(color: Color(0xFF494848), fontSize: 16.5, fontFamily: "Vitali", ),
                            ),
                            TextSpan( text: 'simplifie ',
                              style: TextStyle(color: Color(0xFF494848), fontSize: 16.5, fontFamily: "Vitali", fontWeight: FontWeight.bold,),
                            ),
                            TextSpan( text: 'et ',
                              style: TextStyle(color: Color(0xFF494848), fontSize: 16.5, fontFamily: "Vitali", ),
                            ),
                            TextSpan( text: 'décrypte ',
                              style: TextStyle(color: Color(0xFF494848), fontSize: 16.5, fontFamily: "Vitali", fontWeight: FontWeight.bold,),
                            ),
                            TextSpan( text: 'tous vos contrats en assurance dédiés aux retraités et seniors !',
                              style: TextStyle(color: Color(0xFF494848), fontSize: 16.5, fontFamily: "Vitali", ),
                            ),
                          ],),
                        textAlign: TextAlign.justify,
                      ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        height: MediaQuery.of(context).copyWith().size.height / 16,
                        width: MediaQuery.of(context).size.width / 1.5,
                        alignment: Alignment.bottomCenter,
                        decoration: BoxDecoration(

                            color: Color(0xFF00ADEF),
                            border: Border.all(
                              color: Color(0xFF00ADEF),
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(20))),
                        child: FlatButton(
                          color: Color(0xFF00ADEF),
                          textColor: Color(0xFFFFFFFF),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Choix()));
                          },
                          child: Text('Commencer mon étude', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,)),
                        ),),
                    ],),
                ),

                 ],

          ),

        ],
      ),


    );
  }
}
