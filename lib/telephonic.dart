import 'package:flutter/material.dart';
import 'package:sidebar_animation/bloc.navigation_bloc/navigation_bloc.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class Tel extends StatefulWidget with NavigationStates{
  @override
  State<StatefulWidget> createState() {
    return TelState();
  }
}

class TelState extends State<Tel> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).copyWith().size.height / 1,
        width: MediaQuery.of(context).size.width / 1,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/back.png"),
            fit: BoxFit.cover,
          ),
        ),
        alignment: Alignment.center,
        child: ListView(
          children: <Widget>[
            // Entrez votre prénom
            Container(
              width: MediaQuery.of(context).size.width / 7,
              alignment: Alignment(0.0, 0.0),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Color(0xFFFFFFFF),
                ),
              ),
              child: Text(
                'Prenez un Rendez-Vous Pour être interlocuter au téléphone !',
                style: TextStyle(
                  color: Colors.lightBlue,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 10),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
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
                      //height: MediaQuery.of(context).copyWith().size.height / 3,
                      width: MediaQuery.of(context).size.width / 1.4,
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
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      padding: EdgeInsets.all(7.0),
                      child: Text.rich(
                        TextSpan(
                          text: 'Bonjour ! \n', // default text style
                          children: <TextSpan>[
                            TextSpan(text: ' Veuillez entrer votre numéro de téléphone !'),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ],
            ),

            // textField prenom et valider
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).copyWith().size.height / 10,
                  width: MediaQuery.of(context).size.width / 1.2,
                  alignment: Alignment.centerRight,
                  decoration: BoxDecoration(
                      color: Color(0xFDDAFFFF),
                      border: Border.all(
                        color: Color(0xFDDAFFFF),
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  padding: EdgeInsets.all(10.0),
                  child: TextField(
                    autocorrect: true,
                    decoration: InputDecoration(
                      hintText: 'Entrez votre adresse',
                    ),
                  ),
                ),
              ],
            ),

            Container(
              child: SfCalendar(
                view: CalendarView.week,
                firstDayOfWeek: 1,
                todayHighlightColor: Colors.lightGreenAccent,
                initialSelectedDate: DateTime.now(),

              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width / 1.5,
              alignment: Alignment.center,
              child: RaisedButton(
                onPressed: () {},
                color: Colors.blue,
                textColor: Colors.white,
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Text('Valider'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
