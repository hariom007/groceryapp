import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:groceryapp/Authorization/IntroScreen/swiper_pagination.dart';
import 'package:groceryapp/MyNavigator/myNavigator.dart';
import 'package:groceryapp/Values/AppColors.dart';


class IntroScreen extends StatefulWidget {
  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  final SwiperController _swiperController = SwiperController();
  final int _pageCount = 3;
  int _currentIndex = 0;
  // SharedPreferences sharedPreferences;

  final List<String> titles = [
    "Explore",
    "Choose your",
    "Track"
  ];

  final List<String> bottomtitle = [
    "Grocery Stores!",
    "Daily Products!",
    "your order"
  ];

  final List<String> images =[
    'assets/icon/explore.png',
    'assets/icon/product.png',
    'assets/icon/track.png',
  ];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.primaryBackGroundColor,
      body: Stack(
        children: <Widget>[

          Column(
            children: <Widget>[
              _currentIndex < _pageCount - 1 ? Container(
                alignment: Alignment.topRight,
                padding: EdgeInsets.only(top: 40),
                child: FlatButton(
                  child: Text('Skip',
                    style: TextStyle(
                        color: AppColors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        fontFamily: 'montserrat-semibold'
                    ),),
                  onPressed: (){
                    MyNavigator.goToLoginPage(context);
                  },
                ),
              ) : Container(),
              Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child:  Swiper(
                      index: _currentIndex,
                      controller: _swiperController,
                      itemCount: _pageCount,
                      onIndexChanged: (index) {
                        setState(() {
                          _currentIndex = index;
                        });
                      },
                      loop: false,
                      itemBuilder: (context, index) {
                        return _buildPage(title: titles[index],
                            bottom: bottomtitle[index],
                            icon: images[index]);
                      },
                      pagination: SwiperPagination(
                          alignment: Alignment.bottomCenter,
                          builder: CustomPaginationBuilder(
                              activeSize: Size(35.0, 10.0),
                              size: Size(18.0, 12.0),
                              color: AppColors.grey_09,
                              activeColor: AppColors.buttonColor
                          )

                      ),
                    ),
                  )
              ),
              SizedBox(height: 70,),
              _buildButtons(),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildButtons() {
    return _currentIndex < _pageCount - 1 ?
    Padding(
      padding: EdgeInsets.only(left: 20,right: 20,bottom: 30,top: 10),
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: RaisedButton(
          color: AppColors.buttonColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 0,vertical: 12),
            child: Text('Next',
              style: TextStyle(
                  color: AppColors.white_00,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  fontFamily: 'montserrat-Medium'
              ),),
          ),
          onPressed: () async{
            if (_currentIndex < _pageCount - 1)
              _swiperController.next();

            else {
              MyNavigator.goToLoginPage(context);
            }
          },
        ),
      ),
    )
        :
    Padding(
      padding: EdgeInsets.only(left: 20,right: 20,bottom: 30,top: 10),
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: RaisedButton(
          color: AppColors.buttonColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 0,vertical: 12),
            child: Text('Get Started',
              style: TextStyle(
                  color: AppColors.white_00,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  fontFamily: 'montserrat-semibold'
              ),),
          ),
          onPressed: (){
            MyNavigator.goToLoginPage(context);
          },
        ),
      ),
    );
  }

  Widget _buildPage({String title,String bottom, String icon}) {
    return Container(
        margin:  EdgeInsets.only(top: 0,bottom: 20),
        padding: EdgeInsets.only(top: 00,bottom: 20),
        child:Container(
          child:  Stack(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 80),
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 230,
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Image.asset(icon,
                      fit: BoxFit.fill,
                      // height: 230,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(title,
                      style: TextStyle(
                          color: AppColors.black,
                          fontSize: 18.0,
                      ),
                      textAlign: TextAlign.center,),
                    SizedBox(height: 5,),
                    Text(bottom,style:TextStyle(
                      color: AppColors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                      textAlign: TextAlign.center,),
                  ],
                ),
              ),

            ],
          ),
        )
    );
  }
}