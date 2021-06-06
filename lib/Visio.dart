import 'package:flutter/material.dart';
import 'package:sidebar_animation/bloc.navigation_bloc/navigation_bloc.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class Visio extends StatefulWidget with NavigationStates{
  @override
  State<StatefulWidget> createState() {
    return VisioState();
  }
}

class VisioState extends State<Visio> {

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
                'Prenez un Rendez-Vous Pour un Visio-Conférence !',
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

            Container(
              height: MediaQuery.of(context).copyWith().size.height / 1.5,
              width: MediaQuery.of(context).size.width / 1,
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
