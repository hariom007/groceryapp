import 'package:flutter/material.dart';

class MyNavigator{

  static void goToHomePage(BuildContext context){
    Navigator.of(context).pushNamedAndRemoveUntil('/dashBoard', (route) => false);
  }
  static void goToIntroScreen(BuildContext context){
    Navigator.of(context).pushNamedAndRemoveUntil('/introScreen', (route) => false);
  }

  static void goToLoginPage(BuildContext context){
    Navigator.of(context).pushNamedAndRemoveUntil('/loginscreen', (route) => false);
  }

  static void goToSplashScreen(BuildContext context){
    Navigator.of(context).pushNamedAndRemoveUntil('/splashscreen', (route) => false);
  }

}