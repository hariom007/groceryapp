import 'dart:async';

import 'package:flutter/material.dart';
import 'package:groceryapp/MyNavigator/myNavigator.dart';
import 'package:groceryapp/Values/AppColors.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashScreen extends StatefulWidget {

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 5), (){
      MyNavigator.goToSelectLanguage(context);
    });

  }

  @override
  Widget build(BuildContext context) {
    final height  = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/icon/logoname.png',height: 200,width: 300,fit: BoxFit.fill,),
              SizedBox(height: height/4,),
              SpinKitRipple(color: AppColors.appColor2,size: 60,)
            ],
          )
      ),
    );
  }
}