import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

import 'Visio.dart';
import 'telephonic.dart';

 


class Question extends StatefulWidget {
  @override
  _QuestionState createState() => _QuestionState();
}
void initState(){

}
class _QuestionState extends State<Question> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //bottomNavigationBar: navigation(),

      body: ListView(
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
                    Text(" J'ai une Question",
                      style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700, fontFamily: "MuseoModerno", color: Colors.white),
                    ),
                  ]
              ),
            ),
          ),
      Column(
      mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 10,),
          Container(
            height: MediaQuery.of(context).copyWith().size.height / 8,
            width: MediaQuery.of(context).size.width / 1.2,
            decoration: BoxDecoration(
              //borderRadius: BorderRadius.circular(8.0),
            ),child: Text.rich(
            TextSpan(
              children: <TextSpan>[
                TextSpan( text:'FOIRE AUX QUESTIONS (FAQ)\n\n',
                  style: TextStyle(color: Color(0xFF00ADEF), fontSize: 18, fontWeight: FontWeight.bold, fontFamily: "VitalaRegular",),),
                TextSpan( text: 'Le premier service complet en assurances pour les séniors et aidants',
                  style: TextStyle(color: Color(0xFF494848), fontSize: 14.5, fontFamily: "VitalaRegular", ),
                ),
              ],),
            textAlign: TextAlign.justify,
          ),
          ),],),
          Container(
           padding: const  EdgeInsets.symmetric(horizontal: 10.0, ),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Entrer votre question',
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide(
                    color: Colors.grey,
                    width: 2.0,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
            Container(
              height: MediaQuery.of(context).copyWith().size.height / 18,
            width: MediaQuery.of(context).size.width / 1.15,
            alignment: Alignment.bottomCenter,
            decoration: BoxDecoration(
                color: Color(0xFF00ADEF),
                borderRadius: BorderRadius.all(Radius.circular(30))
            ),
            child: FlatButton(

              textColor: Colors.white,
              onPressed: () {
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                  ),
                  Text('Envoyer ma question',textAlign: TextAlign.center,),
                ],
              ),
            ),
          ),
           SizedBox(
            height: 10,
          ),
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(

                Icons.phone,
                color: Colors.blue,
                size: 30.0,
                semanticLabel: 'Text to announce in accessibility modes',
              ),


              TextButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Tel()));
               }, child: Text('Appel téléphonique',
                style: TextStyle(
                decoration: TextDecoration.underline,
                  decorationThickness: 4,
              ),
              ),
              ),
            ],
          ),
           SizedBox(
            height: 10,
          ),
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(

                Icons.video_call,
                color: Colors.blue,
                size: 30.0,
                semanticLabel: 'Text to announce in accessibility modes',
              ),
              SizedBox(
                height: 10,
              ),

              TextButton(onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Visio()));}, child: Text('Appel visio',style: TextStyle(
                decoration: TextDecoration.underline,
                decorationThickness: 4,
              ),),),
            ],
          ),



        ],
      ),

    ],),);
  }
}