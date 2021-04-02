import 'package:flutter/material.dart';
import 'package:groceryapp/MyNavigator/myNavigator.dart';
import 'package:groceryapp/Values/AppColors.dart';

class FillPersonInfo extends StatefulWidget {
  @override
  _FillPersonInfoState createState() => _FillPersonInfoState();
}

class _FillPersonInfoState extends State<FillPersonInfo> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 250,
                  width: width,
                  child: Image.asset('assets/icon/logoname.png'),
                ),
                TextField(
                  style: TextStyle(
                    color: AppColors.black,
                    fontSize: 14,
                    fontFamily: 'Montserrat-semibold',
                  ),
                  decoration: InputDecoration(
                      hintText: "Username",
                      hintStyle: TextStyle(
                        color: AppColors.grey_90,
                        fontSize: 14,
                        fontFamily: 'Montserrat-Regular',
                      ),
                      prefixIcon: Icon(Icons.person_outline),
                      contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0)
                  ),
                ),
                SizedBox(height: 20,),
                TextField(
                  style: TextStyle(
                    color: AppColors.black,
                    fontSize: 14,
                    fontFamily: 'Montserrat-semibold',
                  ),
                  decoration: InputDecoration(
                      hintText: "Employee address",
                      hintStyle: TextStyle(
                        color: AppColors.grey_90,
                        fontSize: 14,
                        fontFamily: 'Montserrat-Regular',
                      ),
                      prefixIcon: Icon(Icons.mail_outline),
                      contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0)
                  ),
                ),
                SizedBox(height: 20,),
                TextField(
                  style: TextStyle(
                    color: AppColors.black,
                    fontSize: 14,
                    fontFamily: 'Montserrat-semibold',
                  ),
                  decoration: InputDecoration(
                      hintText: "Employee code",
                      hintStyle: TextStyle(
                        color: AppColors.grey_90,
                        fontSize: 14,
                        fontFamily: 'Montserrat-Regular',
                      ),
                      prefixIcon: Icon(Icons.lock_open),
                      contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0)
                  ),
                ),
                SizedBox(height: 40,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: RaisedButton(
                      color: AppColors.buttonColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 0,vertical: 14),
                        child: Text('SignUp',
                          style: TextStyle(
                              color: AppColors.white_00,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              fontFamily: 'montserrat-semibold'
                          ),),
                      ),
                      onPressed: (){
                        MyNavigator.goToDashBoard(context);
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
