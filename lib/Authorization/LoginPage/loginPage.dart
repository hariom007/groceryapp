import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:groceryapp/Authorization/fillpersoninfo.dart';
import 'package:groceryapp/MyNavigator/myNavigator.dart';
import 'package:groceryapp/Values/AppColors.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with TickerProviderStateMixin {

  TabController tabController;

  int _tabIndex = 0;


  @override
  void dispose() {
    tabController = TabController(length: 2,vsync: this);
    tabController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    tabController = TabController(length: 2,vsync: this);
    tabController.addListener(_handleTabSelection);
    super.initState();
  }

  _handleTabSelection() {
    if (tabController.indexIsChanging) {
      setState(() {
        _tabIndex = tabController.index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 250,
                  width: width,
                  child: Image.asset('assets/icon/track1.png'),
                ),
                Column(
                  children: <Widget>[
                    Container(
                      child: Column(
                        children: <Widget>[
                          TabBar(
                            controller: tabController,
                            labelColor: AppColors.black,
                            indicatorColor: AppColors.primaryColor,
                            tabs: <Widget>[
                              Tab(
                                child: Text('SignIn',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: "Montserrat-SemiBold"
                                  ),),
                              ),
                              Tab(
                                child: Text('SignUp',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: "Montserrat-SemiBold"
                                  ),),
                              ),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Container(
                            child: [
                              //SignIn
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          child: TextField(
                                            style: TextStyle(
                                              color: AppColors.black,
                                              fontSize: 14,
                                              fontFamily: 'Montserrat-semibold',
                                            ),
                                            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                                            keyboardType: TextInputType.phone,
                                            decoration: InputDecoration(
                                                hintText: "Mobile Number",
                                                hintStyle: TextStyle(
                                                  color: AppColors.grey_90,
                                                  fontSize: 14,
                                                  fontFamily: 'Montserrat-Regular',
                                                ),
                                                prefixIcon: Icon(Icons.mail_outline),
                                                contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0)
                                            ),
                                          ),
                                        ),
                                        CircleAvatar(
                                          radius: 23,
                                          backgroundColor: AppColors.appColor2,
                                          child: IconButton(
                                            onPressed: (){

                                            },
                                            icon: Icon(Icons.arrow_forward,color: AppColors.white_00,size : 28),
                                          ),
                                        ),

                                      ],
                                    ),
                                    SizedBox(height: 20,),
                                    TextField(
                                      style: TextStyle(
                                        color: AppColors.black,
                                        fontSize: 14,
                                        fontFamily: 'Montserrat-semibold',
                                      ),
                                      obscureText: true,
                                      decoration: InputDecoration(
                                          hintText: "Enter OTP  ",
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
                                            child: Text('SignIn',
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
                                    SizedBox(height: 20,),
                                    Container(
                                      alignment: Alignment.topRight,
                                      child: Text('Reset Password',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold
                                      ),),
                                    ),
                                    SizedBox(height: 20,),
                                    Row(
                                        children: <Widget>[
                                          Expanded(
                                              child: Divider(
                                                color: AppColors.grey_10,
                                              )
                                          ),
                                          Text("  OR  "),
                                          Expanded(
                                              child: Divider(
                                                color: AppColors.grey_10,
                                              )
                                          ),
                                        ]
                                    ),
                                    SizedBox(height: 20,),

                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Expanded(
                                          child: CircleAvatar(
                                            radius: 23,
                                            backgroundColor: AppColors.primaryBackGroundColor,
                                            child:  Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Image.asset("assets/icon/google.png",height: 30,width: 30,fit: BoxFit.fill,),
                                                Text('  Google',
                                                  style: TextStyle(
                                                    color: AppColors.black,
                                                    fontFamily: 'montserrat-regular',
                                                  ),)
                                              ],
                                            )
                                          ),
                                        ),
                                        SizedBox(width: 30,),
                                        Expanded(
                                          child: CircleAvatar(
                                            radius: 23,
                                            backgroundColor: AppColors.primaryBackGroundColor,
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Image.asset("assets/icon/fb.png",height: 30,width: 30,fit: BoxFit.fill,),
                                                Text('  Facebook',
                                                  style: TextStyle(
                                                    color: AppColors.black,
                                                    fontFamily: 'montserrat-regular',
                                                  ),)
                                              ],
                                            )
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 40,),
                                    Center(child: Text('Terms & Conditions',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: AppColors.grey_80
                                      ),)),
                                    SizedBox(height: 20,),


                                  ],
                                ),
                              ),

                              //SignUp
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          child: TextField(
                                            style: TextStyle(
                                              color: AppColors.black,
                                              fontSize: 14,
                                              fontFamily: 'Montserrat-semibold',
                                            ),
                                            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                                            keyboardType: TextInputType.phone,
                                            decoration: InputDecoration(
                                                hintText: "Mobile Number",
                                                hintStyle: TextStyle(
                                                  color: AppColors.grey_90,
                                                  fontSize: 14,
                                                  fontFamily: 'Montserrat-Regular',
                                                ),
                                                prefixIcon: Icon(Icons.mail_outline),
                                                contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0)
                                            ),
                                          ),
                                        ),
                                        CircleAvatar(
                                          radius: 23,
                                          backgroundColor: AppColors.appColor2,
                                          child: IconButton(
                                            onPressed: (){

                                            },
                                            icon: Icon(Icons.arrow_forward,color: AppColors.white_00,size : 28),
                                          ),
                                        ),

                                      ],
                                    ),
                                    SizedBox(height: 20,),
                                    TextField(
                                      style: TextStyle(
                                        color: AppColors.black,
                                        fontSize: 14,
                                        fontFamily: 'Montserrat-semibold',
                                      ),
                                      obscureText: true,
                                      decoration: InputDecoration(
                                          hintText: "Enter OTP  ",
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
                                            child: Text('Verify OTP',
                                              style: TextStyle(
                                                  color: AppColors.white_00,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16,
                                                  fontFamily: 'montserrat-semibold'
                                              ),),
                                          ),
                                          onPressed: (){
                                            Navigator.push(context, MaterialPageRoute(builder: (context)=>FillPersonInfo()));
                                          },
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 20,),
                                    Container(
                                      alignment: Alignment.topRight,
                                      child: Text('Reset Password',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold
                                        ),),
                                    ),
                                    SizedBox(height: 20,),
                                    Row(
                                        children: <Widget>[
                                          Expanded(
                                              child: Divider(
                                                color: AppColors.grey_10,
                                              )
                                          ),
                                          Text("  OR  "),
                                          Expanded(
                                              child: Divider(
                                                color: AppColors.grey_10,
                                              )
                                          ),
                                        ]
                                    ),
                                    SizedBox(height: 20,),

                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Expanded(
                                          child: CircleAvatar(
                                              radius: 23,
                                              backgroundColor: AppColors.primaryBackGroundColor,
                                              child:  Row(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Image.asset("assets/icon/google.png",height: 30,width: 30,fit: BoxFit.fill,),
                                                  Text('  Google',
                                                    style: TextStyle(
                                                      color: AppColors.black,
                                                      fontFamily: 'montserrat-regular',
                                                    ),)
                                                ],
                                              )
                                          ),
                                        ),
                                        SizedBox(width: 30,),
                                        Expanded(
                                          child: CircleAvatar(
                                              radius: 23,
                                              backgroundColor: AppColors.primaryBackGroundColor,
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Image.asset("assets/icon/fb.png",height: 30,width: 30,fit: BoxFit.fill,),
                                                  Text('  Facebook',
                                                    style: TextStyle(
                                                        color: AppColors.black,
                                                      fontFamily: 'montserrat-regular',
                                                    ),)
                                                ],
                                              )
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 40,),
                                    Center(child: Text('Terms & Conditions',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: AppColors.grey_80
                                      ),)),
                                    SizedBox(height: 20,),


                                  ],
                                ),
                              ),
                            ]
                            [_tabIndex],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
