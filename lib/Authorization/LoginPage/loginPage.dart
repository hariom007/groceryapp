import 'package:flutter/material.dart';
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
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [

                                    TextField(
                                      style: TextStyle(
                                        color: AppColors.black,
                                        fontSize: 14,
                                        fontFamily: 'Montserrat-semibold',
                                      ),
                                      decoration: InputDecoration(
                                          hintText: "Email address",
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
                                      obscureText: true,
                                      decoration: InputDecoration(
                                          hintText: "Password",
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
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        CircleAvatar(
                                          radius: 23,
                                          backgroundColor: AppColors.primaryColor,
                                          child: InkWell(
                                            child: Image.asset("assets/icon/google.png",height: 30,width: 30,fit: BoxFit.fill,),
                                            onTap: () {
                                            },
                                          ),
                                        ),
                                        SizedBox(width: 30,),
                                        CircleAvatar(
                                          radius: 23,
                                          backgroundColor: AppColors.primaryColor,
                                          child: InkWell(
                                            child: Image.asset("assets/icon/fb.png",height: 30,width: 30,fit: BoxFit.fill,),
                                            onTap: () {
                                            },
                                          ),
                                        ),
                                      ],
                                    ),

                                  ],
                                ),
                              ),
                              Container(
                                  child: Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                      child: Column(
                                        children: <Widget>[
                                          Card(
                                            elevation: 0,
                                            color: AppColors.white_90,
                                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(7))),
                                            child: TextField(
                                              decoration: InputDecoration(
                                                  hintText: "First Name",
                                                  hintStyle: TextStyle(
                                                    color: AppColors.grey_50,
                                                    fontFamily: 'Montserrat-Regular',
                                                  ),
                                                  filled: true,
                                                  border: OutlineInputBorder(
                                                    borderSide: BorderSide.none,
                                                    borderRadius: BorderRadius.all(Radius.circular(7.0)),
                                                  ),
                                                  contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0)
                                              ),
                                            ),
                                          ),
                                          Card(
                                            elevation: 0,
                                            color: AppColors.white_90,
                                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(7))),
                                            child: TextField(
                                              decoration: InputDecoration(
                                                  hintText: "Your Email Address",
                                                  hintStyle: TextStyle(
                                                    color: AppColors.grey_50,
                                                    fontFamily: 'Montserrat-Regular',
                                                  ),
                                                  filled: true,
//                                                            fillColor: Colors.white,
                                                  border: OutlineInputBorder(
                                                    borderSide: BorderSide.none,
                                                    borderRadius: BorderRadius.all(Radius.circular(7.0)),
                                                  ),
                                                  contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0)
                                              ),
                                            ),
                                          ),
                                        ],
                                      )
                                  )
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
