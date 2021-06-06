import 'package:bloc/bloc.dart';
import 'package:sidebar_animation/Acceuil.dart';
import 'package:sidebar_animation/Choix1.dart';
import 'package:sidebar_animation/Contact.dart';
import 'package:sidebar_animation/Login.dart';
import 'package:sidebar_animation/Type.dart';
import 'package:sidebar_animation/conseiller.dart';
import 'package:sidebar_animation/form.dart';


enum NavigationEvents {
  HomePageClickedEvent,
  MyAccountClickedEvent,
  MyOrdersClickedEvent,
  contactEvent,
}

abstract class NavigationStates {}

class NavigationBloc extends Bloc<NavigationEvents, NavigationStates> {
  @override
  NavigationStates get initialState => Acceuil();

  @override
  Stream<NavigationStates> mapEventToState(NavigationEvents event) async* {
    switch (event) {
      case NavigationEvents.HomePageClickedEvent:
        yield Acceuil();
        break;
      case NavigationEvents.MyAccountClickedEvent:
        yield Login();
        break;
      case NavigationEvents.MyOrdersClickedEvent:
        yield Choix();
        break;
      case NavigationEvents.contactEvent:
        yield Contact();
        break;
    }
  }
}
