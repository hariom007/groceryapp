import 'package:flutter/material.dart';
import 'package:groceryapp/MyNavigator/myNavigator.dart';
import 'package:groceryapp/Values/AppColors.dart';

class SelectLanguage extends StatefulWidget {
  @override
  _SelectLanguageState createState() => _SelectLanguageState();
}

class _SelectLanguageState extends State<SelectLanguage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(child: Image.asset('assets/icon/logoname.png',height: 300,width: 300,fit: BoxFit.fill,)),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Select your language  ',
                    style: TextStyle(
                      fontFamily: 'montserrat-semibold',
                      fontSize: 18,
                      color: AppColors.appColor2
                    ),),
                  Icon(Icons.arrow_downward,color: AppColors.appColor2,)
                ],
              ),

              SizedBox(height: 25,),
              InkWell(
                onTap: (){
                  MyNavigator.goToIntroScreen(context);
                },
                child: Container(
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide()
                      )
                  ),
                  child: Text('English',
                    style: TextStyle(
                      fontFamily: 'montserrat-semibold',
                      fontSize: 16,
                    ),),
                ),
              ),
              SizedBox(height: 15,),
              InkWell(
                onTap: (){
                  MyNavigator.goToIntroScreen(context);
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide()
                    )
                  ),
                  child: Text('Hindi',
                    style: TextStyle(
                      fontFamily: 'montserrat-semibold',
                      fontSize: 16,
                    ),),
                ),
              ),
              SizedBox(height: 15,),
              InkWell(
                onTap: (){
                  MyNavigator.goToIntroScreen(context);
                },
                child: Container(
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide()
                      )
                  ),
                  child: Text('Gujarati',
                    style: TextStyle(
                      fontFamily: 'montserrat-semibold',
                      fontSize: 16,
                    ),),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
