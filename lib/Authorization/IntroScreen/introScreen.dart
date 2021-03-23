import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:groceryapp/Authorization/IntroScreen/swiper_pagination.dart';
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
          Container(
            alignment: Alignment.center,
          ),
          Column(
            children: <Widget>[
              Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 40),
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
                          alignment: Alignment.topCenter,
                          builder: CustomPaginationBuilder(
                              activeSize: Size(35.0, 10.0),
                              size: Size(12.0, 12.0),
                              color: AppColors.white_90,
                              activeColor: AppColors.buttonColor
                          )

                      ),
                    ),
                  )
              ),
              _buildButtons(),
              SizedBox(height: 20,)
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildButtons() {
    return _currentIndex < _pageCount - 1 ?
    Container(
      margin: EdgeInsets.only(right: 16.0, bottom: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          FlatButton(
            textColor: AppColors.primaryColor,
            child: Text("Skip",
              style: TextStyle(
                  color: AppColors.primaryColor,
                  fontSize: 16,
                  fontFamily: 'Poppins-Medium'
              ),),
            onPressed: () async {
              // MyNavigator.goToAuthorizationPage(context);

            },
          ),
          RaisedButton(
            color: AppColors.buttonColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25)
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Text('Next',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  fontFamily: 'Poppins-Medium',
                  color: AppColors.primaryColor,
                ),),
            ),
            onPressed: () async {
              if (_currentIndex < _pageCount - 1)
                _swiperController.next();
              else {

                // MyNavigator.goToAuthorizationPage(context);

              }
            },
          )
        ],
      ),
    )
        :
    Container(
      transform: Matrix4.translationValues(0, -50, 0),
      child: RaisedButton(
        color: AppColors.buttonColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 12),
          child: Text('Get Started',
            style: TextStyle(
                color: AppColors.white_00,
                fontWeight: FontWeight.bold,
                fontSize: 16,
                fontFamily: 'Poppins-Medium'
            ),),
        ),
        onPressed: (){

          // MyNavigator.goToAuthorizationPage(context);

        },
      ),
    );
  }

  Widget _buildPage({String title,String bottom, String icon}) {
    return Container(
        margin:  EdgeInsets.only(top: 50,bottom: 50),
        padding: EdgeInsets.only(top: 20,bottom: 20),
        child:Container(
          child:  Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.topCenter,
                child: Column(
                  children: [
                    Text(title,
                      style: TextStyle(
                          color: AppColors.white_30,
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold
                      ),
                      textAlign: TextAlign.center,),
                    SizedBox(height: 20,),
                    Text(bottom,style:TextStyle(
                      color: AppColors.white_30,
                      fontSize: 17.0,
                    ),
                      textAlign: TextAlign.center,),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 80),
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 230,
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Image.asset(icon,
                      fit: BoxFit.fitWidth,
                      height: 168,
                    ),
                  ),
                ),
              ),

            ],
          ),
        )
    );
  }
}