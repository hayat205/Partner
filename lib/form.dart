import 'package:flutter/material.dart';
import 'package:emojis/emojis.dart'; // to use Emoji collection
import 'package:http/http.dart' as http;
import 'package:sidebar_animation/Devenir.dart';
import 'package:sidebar_animation/Widgets/FadeAnimation.dart';
import 'package:sidebar_animation/bloc.navigation_bloc/navigation_bloc.dart';
class FormScreen extends StatefulWidget with NavigationStates{
  @override
  State<StatefulWidget> createState() {
    return FormScreenState();
  }
}

enum civilite { h,f}
enum conjoint { oui,non}
enum enfants { oui,non}
enum pourQui { moi,famille,aide}

class FormScreenState extends State<FormScreen> {

  civilite civility=civilite.h;
  pourQui pourQ=pourQui.moi;
  conjoint conjointB=conjoint.oui;
  enfants enfantsB=enfants.oui;

  final textFieldnameHolder = TextEditingController();
  final textFieldnumHolder = TextEditingController();
  TextEditingController _jr = new TextEditingController();
  TextEditingController _mm = new TextEditingController();
  TextEditingController _aa = new TextEditingController();
  TextEditingController _date = new TextEditingController();

  String prenom = '';
  String tel = '';
  String jour = '';
  String mois = '';
  String annee = '';
  Item selectedUser;
  Item moiisel;

  List<Item> regimeS = <Item>[const Item('Régime général'), const Item('Fonctionnaire'),const Item('Travailleur indépendant'), const Item('Autres régimes spéciaux'),];
  List<Item> dateAdhesion = <Item>[
    const Item('Mai 2021'), const Item('juin 2021'), const Item('juillet 2021'),
    const Item('Aout 2021'), const Item('Septembre 2021'), const Item('octobre 2021'),
    const Item('novembre 2021'), const Item('decembre 2021'),];

  bool isNvisible = false;
  bool isNumVisible = false;
  bool isvalidated=false;
  bool isNotvisible=true;

  getTextName() {
    setState(() {
      prenom = textFieldnameHolder.text;
      prenom.isEmpty ? isvalidated = false : isvalidated = true;
      if(isvalidated==true){
        isNvisible = true;
      }else{
        isNvisible = false;
      }

    });
  }

  getTextNum() {
    setState(() {
      tel = textFieldnumHolder.text;
      isNumVisible = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: ListView(
          children: <Widget>[
            Positioned(
              child: FadeAnimation(
                1.6,
                Container(
                  height: MediaQuery.of(context).copyWith().size.height / 4,
                  //   width: MediaQuery.of(context).size.width / 2,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                          'assets/images/appbarBG.png'),
                      fit: BoxFit.cover,
                    ),
                    shape: BoxShape.rectangle,
                  ),
                  child: ListTile(
                    title: Text(
                      "\nMon Espace",textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.w800),
                    ),
                    subtitle: Text(
                      "             ",textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 18,
                      ),
                    ),),
                ),

              ),

            ),
            SizedBox(height: 10,),
            Container(
              alignment: Alignment.center,
              height: MediaQuery.of(context).copyWith().size.height / 8,
              width: MediaQuery.of(context).size.width / 4,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/partner-icon-smile-r.png'),
                  fit: BoxFit.contain,
                ),
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.blue,
                    blurRadius: 2.0, // soften the shadow
                    spreadRadius: 1.0, //extend the shadow
                    offset: Offset(0.5, 0.5,),
                  )
                ],
                color: Color(0xFFFFFFFF),
                border: Border.all(
                  color: Color(0xFFFFFFFF),),),),
            SizedBox(height: 10,),
            // Entrez votre prénom
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width / 7,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Color(0xFFFFFFFF),
                ),
              ),
              child: Text.rich(
                TextSpan(
                 children: <TextSpan>[
                   TextSpan( text:'BONJOUR! JE SUIS  VOTRE CONSEILLER DIGITALE \n',
                     style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold,),),
                    TextSpan( text: 'NOUS ALLONS EFFECTUER VOTRE ETUDE DES BESOINS.\n',
                      style: TextStyle(color: Colors.lightBlue, fontSize: 14, fontWeight: FontWeight.bold,),),
                    ],),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 10),
            SizedBox(height: 10),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                 SizedBox(width: 10,),
                  Container(
                    height: MediaQuery.of(context).copyWith().size.height / 10,
                    width: MediaQuery.of(context).size.width / 6,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/partner-icon-smile-r.png'),
                        fit: BoxFit.contain,
                      ),
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 2.0, // soften the shadow
                          spreadRadius: 1.0, //extend the shadow
                          offset: Offset(0.5, 0.5,),
                        )
                      ],
                      color: Color(0xFFFFFFFF),
                      border: Border.all(
                        color: Color(0xFFFFFFFF),),),),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        //height: MediaQuery.of(context).copyWith().size.height / 3,
                        width: MediaQuery.of(context).size.width / 1.4,
                        alignment: Alignment.topLeft,

                        decoration: BoxDecoration(
                            boxShadow: [
                              // color: Colors.white, //background color of box
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 2.0, // soften the shadow
                                spreadRadius: 1.0, //extend the shadow
                                offset: Offset(0.5, 0.5, ),)],
                            color: Color(0xFFFFFFFF),
                            border: Border.all(color: Color(0xFFFFFFFF),),
                            borderRadius: BorderRadius.all(Radius.circular(20))),
                        padding: EdgeInsets.all(7.0),
                        child: Text.rich(
                          TextSpan(
                            text: 'Bonjour ! \nJe suis ', // default text style
                            children: <TextSpan>[
                              TextSpan( text: 'Partner',style: TextStyle(fontWeight: FontWeight.bold)),
                              TextSpan( text:' votre assistant numérique, je vais vous aider dans votre recherche.'),],),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                       width: MediaQuery.of(context).size.width / 2,
                        decoration: BoxDecoration(
                            boxShadow: [
                             BoxShadow(
                                color: Colors.grey,
                                blurRadius: 2.0, // soften the shadow
                                spreadRadius: 1.0, //extend the shadow
                                offset: Offset(0.5,0.5,),)],
                            color: Color(0xFFFFFFFF),
                            border: Border.all(color: Color(0xFFFFFFFF),),
                            borderRadius: BorderRadius.all(Radius.circular(20))),
                        padding: EdgeInsets.all(7.0),
                        child: Text(' Quel est votre prénom ?${Emojis.smilingFaceWithSmilingEyes}'),
                      ),],),],),),
            SizedBox(height: 10),
            // textField prenom et valider
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width / 1.2,
                    alignment: Alignment.centerRight,
                    decoration: BoxDecoration(
                        color: Color(0xFDDAFFFF),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    padding: EdgeInsets.all(10.0),
                    child: TextFormField(
                      enabled : !isNvisible,
                      controller: textFieldnameHolder,
                      decoration: InputDecoration( border:InputBorder.none ,hintText: 'Entrez votre prénom',
                        errorText: isvalidated ? null:'' ,),),),
                  Visibility(
                    visible: !isNvisible,
                    child: Container(
                    width: MediaQuery.of(context).size.width / 3.8,
                    alignment: Alignment.topRight,
                    child: RaisedButton(
                      splashColor: Colors.cyanAccent,
                      onPressed: getTextName,
                      color: Color(0xff0d8aea),
                      textColor: Colors.white,
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                      child: Text('Valider'),
                    ),),),
                  SizedBox(height: 10,),],),
                SizedBox(width:10,),
            ],),
            // entrer civilite
            AnimatedOpacity(
              opacity:isNvisible ? 1.0 : 0.0,
              duration: Duration(seconds: 2),
              //visible: isNvisible,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(width: 10,),
                  Container(
                    height: MediaQuery.of(context).copyWith().size.height / 10,
                    width: MediaQuery.of(context).size.width / 6,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/partner-icon-smile-r.png'),
                        fit: BoxFit.contain,
                      ),
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 2.0, // soften the shadow
                          spreadRadius: 1.0, //extend the shadow
                          offset: Offset(
                            0.5, // Move to right 10  horizontally
                            0.5, // Move to bottom 10 Vertically
                          ),
                        )
                      ],
                      color: Color(0xFFFFFFFF),
                      border: Border.all(
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        //height: MediaQuery.of(context).copyWith().size.height / 3,
                        width: MediaQuery.of(context).size.width / 1.5,
                        alignment: Alignment.topLeft,

                        decoration: BoxDecoration(
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
                            color: Color(0xFFFFFFFF),
                            border: Border.all(
                              color: Color(0xFFFFFFFF),
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),

                        padding: EdgeInsets.all(8.0),
                        child: Text.rich(
                          TextSpan(
                            text: 'Enchanté  ${Emojis.handshake} ', // default text style
                            children: <TextSpan>[
                              TextSpan(
                                  text: '$prenom ',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        width: MediaQuery.of(context).size.width / 1.5,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.blue,
                                blurRadius: 2.0, // soften the shadow
                                spreadRadius: 1.0, //extend the shadow
                                offset: Offset(
                                  0.5,
                                  0.5,
                                ),
                              )
                            ],
                            color: Color(0xFFFFFFFF),
                            border: Border.all(
                              color: Color(0xFFFFFFFF),
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        padding: EdgeInsets.all(9.0),
                        child: Text(
                            ' Précisez-moi également votre civilité.'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            // entrez et valider
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Visibility(
                  visible: isNvisible,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Container(
                              width: MediaQuery.of(context).size.width / 2.2,
                              alignment: Alignment.topRight,
                              decoration: BoxDecoration(
                                  color: Color(0xFDDAFFFF),
                                  border: Border.all(
                                    color: Color(0xFDDAFFFF),
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(20))),
                              padding: EdgeInsets.all(2.0),

                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                //mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  ListTile(
                                    title: const Text('Monsieur',style:
                                    TextStyle(fontSize: 13),textAlign: TextAlign.left,),
                                    leading: Radio<civilite>(
                                      value: civilite.h,
                                      groupValue: civility,
                                      onChanged: (value) {
                                        setState(() {
                                          civility = value;
                                        });
                                      },
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text('Madame',style:
                                    TextStyle(fontSize: 13),textAlign: TextAlign.left,),
                                    leading: Radio<civilite>(
                                      value: civilite.f,
                                      groupValue: civility,
                                      onChanged: (value) {
                                        setState(() {
                                          civility = value;
                                        });
                                      },
                                    ),
                                  ),
                                ],
                              )
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 1.5,
                            alignment: Alignment.topRight,
                            child: RaisedButton(
                              onPressed: getTextNum,
                              color: Color(0xff0d8aea),
                              textColor: Colors.white,
                              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                              child: Text('Valider'),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 10,),
                    ],),),
              ],
            ),
              SizedBox(width: 10,),],),
            //pour qui
            Visibility(
              visible: isNumVisible,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(width: 10,),
                  Container(
                    height: MediaQuery.of(context).copyWith().size.height / 10,
                    width: MediaQuery.of(context).size.width / 6,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/partner-icon-smile-r.png'),
                        fit: BoxFit.contain,
                      ),
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blue,
                          blurRadius: 2.0, // soften the shadow
                          spreadRadius: 1.0, //extend the shadow
                          offset: Offset(0.5, 0.5,),)],
                      color: Color(0xFFFFFFFF),
                      border: Border.all(
                        color: Color(0xFFFFFFFF),),),),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width / 1.5,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.blue,
                                blurRadius: 2.0,
                                spreadRadius: 1.0,
                                offset: Offset(0.5, 0.5,),)],
                            color: Color(0xFFFFFFFF),
                            border: Border.all(
                              color: Color(0xFFFFFFFF),
                            ),
                            borderRadius:
                            BorderRadius.all(Radius.circular(20))),
                        padding: EdgeInsets.all(8.0),
                        child: Text('Pour qui recherchez-vous une complémentaire santé?'),),],),],),),
            SizedBox(height: 10),
            //moi foyer aide radio
            Visibility(
              visible: isNumVisible,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Container(
                          width: MediaQuery.of(context).size.width / 2,
                          alignment: Alignment.topRight,
                          decoration: BoxDecoration(
                              color: Color(0xFDDAFFFF),
                              border: Border.all(
                                color: Color(0xFDDAFFFF),
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(20))),
                          padding: EdgeInsets.all(2.0),

                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            //mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              ListTile(
                                title: const Text('Moi',style:
                                TextStyle(fontSize: 13),textAlign: TextAlign.left,),
                                leading: Radio<pourQui>(
                                  value: pourQui.moi,
                                  groupValue: pourQ,
                                  onChanged: (value) {
                                    setState(() {
                                      pourQ = value;
                                    });},),),
                              ListTile(
                                title: const Text('Mon foyer',style:
                                TextStyle(fontSize: 13),textAlign: TextAlign.left,),
                                leading: Radio<pourQui>(
                                  value:pourQui.famille,
                                  groupValue: pourQ,
                                  onChanged: (value) {
                                    setState(() {
                                      pourQ = value;
                                    });},),),
                              ListTile(
                                title: const Text('Un Aidé ',style:
                                TextStyle(fontSize: 13),textAlign: TextAlign.left,),
                                leading: Radio<pourQui>(
                                  value:pourQui.aide,
                                  groupValue: pourQ,
                                  onChanged: (value) {
                                    setState(() {
                                      pourQ = value;
                                    });},),),],)),
                      Container(
                        width: MediaQuery.of(context).size.width / 1.5,
                        alignment: Alignment.topRight,
                        child: RaisedButton(
                          onPressed: getTextNum,
                          color: Color(0xff0d8aea),
                          textColor: Colors.white,
                          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                          child: Text('Valider'),
                        ),),],),
                  SizedBox(width: 10,),
                ],),),
            SizedBox(height:10,),
            //date
            Visibility(
              visible: isNumVisible,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(width: 10,),
                  Container(
                    height: MediaQuery.of(context).copyWith().size.height / 10,
                    width: MediaQuery.of(context).size.width / 6,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/partner-icon-smile-r.png'),
                        fit: BoxFit.contain,
                      ),
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blue,
                          blurRadius: 2.0, // soften the shadow
                          spreadRadius: 1.0, //extend the shadow
                          offset: Offset(0.5, 0.5,),)],
                      color: Color(0xFFFFFFFF),
                      border: Border.all(
                        color: Color(0xFFFFFFFF),),),),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width / 1.5,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.blue,
                                blurRadius: 2.0,
                                spreadRadius: 1.0,
                                offset: Offset(0.5, 0.5,),)],
                            color: Color(0xFFFFFFFF),
                            border: Border.all(
                              color: Color(0xFFFFFFFF),
                            ),
                            borderRadius:
                            BorderRadius.all(Radius.circular(20))),
                        padding: EdgeInsets.all(8.0),
                        child: Text('Affinons ensemble votre besoin. Donnez-moi votre date de naissance s\'il vous plaît.'),),],),],),),
            SizedBox(height: 10),
            //entrer date
            Visibility(
              visible: isNumVisible,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Visibility(
                        visible: isNvisible,
                        child:Row(
                          children:<Widget>[
                            Container(
                              width: MediaQuery.of(context).size.width / 5,
                              alignment: Alignment.centerRight,
                              decoration: BoxDecoration(
                                  color: Color(0xFDDAFFFF),
                                  border: Border.all(
                                    color: Color(0xFDDAFFFF),
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(20))),
                              padding: EdgeInsets.all(10.0),
                              child: TextFormField(
                                style: TextStyle(
                                    fontSize: 16.0
                                ),
                                controller: _jr,
                                keyboardType: TextInputType.datetime,
                                decoration: InputDecoration(
                                  isDense: true,
                                  fillColor: Color(0xFDDAFFFF),
                                  hintText: 'jj',
                                  filled: true,
                                  border: InputBorder.none,
                                  contentPadding: const EdgeInsets.only(left: 14.0, bottom: 10.0, top: 10.0),),
                                onSaved: (value) => jour  = value,),),
                            Text('/'),
                            Container(
                              width: MediaQuery.of(context).size.width / 5,
                              alignment: Alignment.centerRight,
                              decoration: BoxDecoration(
                                  color: Color(0xFDDAFFFF),
                                  border: Border.all(
                                    color: Color(0xFDDAFFFF),
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(20))),
                              padding: EdgeInsets.all(10.0),
                              child: TextFormField(
                                style: TextStyle(
                                    fontSize: 16.0
                                ),
                                controller: _mm,
                                keyboardType: TextInputType.datetime,
                                decoration: InputDecoration(
                                  isDense: true,
                                  fillColor: Color(0xFDDAFFFF),
                                  hintText: 'mm',
                                  filled: true,
                                  border: InputBorder.none,
                                  contentPadding: const EdgeInsets.only(left: 14.0, bottom: 10.0, top: 10.0),),
                                onSaved: (value) => mois  = value,),),
                            Text('/'),
                            Container(
                              width: MediaQuery.of(context).size.width / 5,
                              alignment: Alignment.centerRight,
                              decoration: BoxDecoration(
                                  color: Color(0xFDDAFFFF),
                                  border: Border.all(
                                    color: Color(0xFDDAFFFF),
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(20))),
                              padding: EdgeInsets.all(10.0),
                              child: TextFormField(
                                style: TextStyle(
                                    fontSize: 16.0
                                ),
                                controller: _aa,
                                keyboardType: TextInputType.datetime,
                                decoration: InputDecoration(
                                  isDense: true,
                                  fillColor: Color(0xFDDAFFFF),
                                  hintText: 'aaaa',
                                  filled: true,
                                  border: InputBorder.none,
                                  contentPadding: const EdgeInsets.only(left: 14.0, bottom: 10.0, top: 10.0),
                                ),
                                onSaved: (value) => annee  = value,),),],),),

                      Visibility(
                        visible: isNvisible,
                        child: Container(
                          width: MediaQuery.of(context).size.width / 1.5,
                          alignment: Alignment.topRight,
                          child: RaisedButton(
                            onPressed: (){},
                            color: Color(0xff0d8aea),
                            textColor: Colors.white,
                            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                            child: Text('Valider'),),),),],),

                  SizedBox(width: 10,),],),
            ),
            SizedBox(height: 10),
            Visibility(
              visible: isNumVisible,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(width: 10,),
                  Container(
                    height: MediaQuery.of(context).copyWith().size.height / 10,
                    width: MediaQuery.of(context).size.width / 6,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/partner-icon-smile-r.png'),
                        fit: BoxFit.contain,
                      ),
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blue,
                          blurRadius: 2.0, // soften the shadow
                          spreadRadius: 1.0, //extend the shadow
                          offset: Offset(
                            0.5,
                            0.5,
                          ),
                        )
                      ],
                      color: Color(0xFFFFFFFF),
                      border: Border.all(
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width / 1.5,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.blue,
                                blurRadius: 2.0,
                                spreadRadius: 1.0,
                                offset: Offset(0.5, 0.5,),)],
                            color: Color(0xFFFFFFFF),
                            border: Border.all(
                              color: Color(0xFFFFFFFF),
                            ),
                            borderRadius:
                            BorderRadius.all(Radius.circular(20))),
                        padding: EdgeInsets.all(8.0),
                        child: Text('Merci $prenom '),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        width: MediaQuery.of(context).size.width / 1.5,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.blue,
                                blurRadius: 2.0,
                                spreadRadius: 1.0,
                                offset: Offset(0.5, 0.5,),)],
                            color: Color(0xFFFFFFFF),
                            border: Border.all(
                              color: Color(0xFFFFFFFF),
                            ),
                            borderRadius:
                            BorderRadius.all(Radius.circular(20))),
                        padding: EdgeInsets.all(8.0),
                        child: Text('La date 00/00/0000 est bien prise en compte.'),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        width: MediaQuery.of(context).size.width / 1.5,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.blue,
                                blurRadius: 2.0,
                                spreadRadius: 1.0,
                                offset: Offset(0.5, 0.5,),)],
                            color: Color(0xFFFFFFFF),
                            border: Border.all(
                              color: Color(0xFFFFFFFF),
                            ),
                            borderRadius:
                            BorderRadius.all(Radius.circular(20))),
                        padding: EdgeInsets.all(8.0),
                        child: Text('$prenom , pour correspondre à vos attentes, quel est votre régime sociale ?'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            //regime
            Visibility(
              visible: isNumVisible,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,

                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                    SizedBox(width: 30,),
                    DropdownButton<Item>(
                  hint:  Text("Régime sociale"),
                  value: selectedUser,
                  onChanged: (Item Value) {
                    setState(() {
                      selectedUser = Value;
                    });
                  },
                  items: regimeS.map((Item user) {
                    return  DropdownMenuItem<Item>(
                      value: user,
                      child: Row(
                        children: <Widget>[
                          Text(
                            user.name,
                            style:  TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    );
                  }).toList(),
                ),
               ],),
                    SizedBox(width: 10,),
                    Visibility(
                      visible: isNvisible,
                      child: Container(
                        width: MediaQuery.of(context).size.width / 1.5,
                        alignment: Alignment.topRight,
                        child: RaisedButton(
                          onPressed: (){},
                          color: Color(0xff0d8aea),
                          textColor: Colors.white,
                          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                          child: Text('Valider'),),),),
                  ],),),
            SizedBox(height: 10,),
            //conjoint et enfants
            Visibility(
              visible: isNumVisible,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(width: 10,),
                  Container(
                    height: MediaQuery.of(context).copyWith().size.height / 10,
                    width: MediaQuery.of(context).size.width / 6,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/partner-icon-smile-r.png'),
                        fit: BoxFit.contain,
                      ),
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blue,
                          blurRadius: 2.0, // soften the shadow
                          spreadRadius: 1.0, //extend the shadow
                          offset: Offset(
                            0.5,
                            0.5,
                          ),
                        )
                      ],
                      color: Color(0xFFFFFFFF),
                      border: Border.all(
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width / 1.5,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.blue,
                                blurRadius: 2.0,
                                spreadRadius: 1.0,
                                offset: Offset(
                                  0.5,
                                  0.5,
                                ),
                              )
                            ],
                            color: Color(0xFFFFFFFF),
                            border: Border.all(
                              color: Color(0xFFFFFFFF),
                            ),
                            borderRadius:
                            BorderRadius.all(Radius.circular(20))),
                        padding: EdgeInsets.all(5.0),
                        child: Text(' $prenom ,souhaitez vous ajouter d ‘autres personnes à couvrir (un(e) conjoint(e) des enfants) ${Emojis.familyManWomanGirlBoy} ?'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            //Radio
            Visibility(
              visible: isNumVisible,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Container(
                          width: MediaQuery.of(context).size.width / 2.3,
                          alignment: Alignment.topRight,
                          decoration: BoxDecoration(
                              color: Color(0xFDDAFFFF),
                              border: Border.all(
                                color: Color(0xFDDAFFFF),
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(20))),
                          padding: EdgeInsets.all(2.0),

                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            //mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              ListTile(
                                title: const Text('Oui',style:
                                TextStyle(fontSize: 13),textAlign: TextAlign.left,),
                                leading: Radio<conjoint>(
                                  value: conjoint.oui,
                                  groupValue: conjointB,
                                  onChanged: (value) {
                                    setState(() {
                                      conjointB = value;
                                    });
                                  },
                                ),
                              ),
                              ListTile(
                                title: const Text('Non',style:
                                TextStyle(fontSize: 13),textAlign: TextAlign.left,),
                                leading: Radio<conjoint>(
                                  value: conjoint.non,
                                  groupValue: conjointB,
                                  onChanged: (value) {
                                    setState(() {
                                      conjointB = value;
                                    });
                                  },
                                ),
                              ),
                            ],
                          )
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 1.5,
                        alignment: Alignment.topRight,
                        child: RaisedButton(
                          onPressed: getTextNum,
                          color: Color(0xff0d8aea),
                          textColor: Colors.white,
                          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                          child: Text('Valider'),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 10,),
                ],),),
            SizedBox(height: 10,),
            //date adhesion
            Visibility(
              visible: isNumVisible,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(width: 10,),
                  Container(
                    height: MediaQuery.of(context).copyWith().size.height / 10,
                    width: MediaQuery.of(context).size.width / 6,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/partner-icon-smile-r.png'),
                        fit: BoxFit.contain,
                      ),
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blue,
                          blurRadius: 2.0, // soften the shadow
                          spreadRadius: 1.0, //extend the shadow
                          offset: Offset(
                            0.5,
                            0.5,
                          ),
                        )
                      ],
                      color: Color(0xFFFFFFFF),
                      border: Border.all(
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width / 1.5,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.blue,
                                blurRadius: 2.0,
                                spreadRadius: 1.0,
                                offset: Offset(
                                  0.5,
                                  0.5,
                                ),
                              )
                            ],
                            color: Color(0xFFFFFFFF),
                            border: Border.all(
                              color: Color(0xFFFFFFFF),
                            ),
                            borderRadius:
                            BorderRadius.all(Radius.circular(20))),
                        padding: EdgeInsets.all(10.0),
                        child: Text('A quel moment souhaitez débuter votre adhésion ? ${Emojis.calendar}'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Visibility(
              visible: isNumVisible,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      SizedBox(width: 30,),
                      DropdownButton<Item>(
                        hint:  Text("Début adhésion"),
                        value: moiisel,
                        onChanged: (Item Value) {
                          setState(() {
                            moiisel = Value;
                          });
                        },
                        items: dateAdhesion.map((Item moii) {
                          return  DropdownMenuItem<Item>(
                            value: moii,
                            child: Row(
                              children: <Widget>[
                                Text(
                                  moii.name,
                                  style:  TextStyle(color: Colors.black),
                                ),
                              ],
                            ),
                          );
                        }).toList(),
                      ),
                    ],
                  ),],),
            ),
            SizedBox(height: 10,),
            Container(
              width: MediaQuery.of(context).size.width / 1.5,
              alignment: Alignment.topRight,
              child: RaisedButton(
               onPressed: () async {
            Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => Devenir()));
           // print(await http.read('https://www.tutorialspoint.com/flutter/flutter_accessing_rest_api.htm'));
            },
                color: Color(0xff0d8aea),
                textColor: Colors.white,
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Text('Recommandation Partner'),
              ),
            ),
          ],
        ),
    );
  }
}
class Item {
  const Item(this.name);
  final String name;

}
