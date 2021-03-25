import 'package:flutter/material.dart';
import 'package:groceryapp/Authorization/IntroScreen/introScreen.dart';
import 'package:groceryapp/Authorization/LoginPage/loginPage.dart';
import 'package:groceryapp/UIDashBoard/HomePage/homePage.dart';
import 'package:groceryapp/UIDashBoard/dashBoard.dart';
import 'Values/AppColors.dart';

void main() {
  runApp(GroceryApp());
}

class GroceryApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroScreen(),
      title: 'Grocery App',
      theme: ThemeData(
          primaryColor: AppColors.primaryColor,
          scaffoldBackgroundColor: AppColors.primaryBackGroundColor,
          primaryIconTheme: IconThemeData(color: AppColors.white_00),
          iconTheme: new IconThemeData(color: AppColors.white_00),
          primaryTextTheme: TextTheme(
            headline6: TextStyle(
              color: AppColors.white_00,
              fontFamily: 'Montserrat-SemiBold',
              fontSize: 16,
            ),
          ),
          textTheme: TextTheme(
            bodyText1: TextStyle(
              color: AppColors.grey_90,
              fontFamily: 'Montserrat-SemiBold',
            ),
            bodyText2: TextStyle(
                fontFamily: 'Montserrat-Regular',
                color: AppColors.grey_90
            ),
            headline1: TextStyle(
                fontFamily: 'Montserrat-ExtraBold',
                color: AppColors.grey_90
            ),
          )
      ),
      routes: <String,WidgetBuilder>{
        '/loginscreen' : (BuildContext context) => LoginPage(),
        '/dashBoard' : (BuildContext context) => DashBoard(),
        '/introScreen' : (BuildContext context) => IntroScreen(),
        '/homePage':  (BuildContext context) => HomePage(),
      },
    );
  }
}