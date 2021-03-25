import 'package:flutter/material.dart';
import 'package:groceryapp/UIDashBoard/fab_bottom_app_bar.dart';
import 'package:groceryapp/UIDashBoard/fab_with_icons.dart';
import 'package:groceryapp/UIDashBoard/layout.dart';
import 'package:groceryapp/Values/AppColors.dart';

import 'HomePage/homePage.dart';


class DashBoard extends StatefulWidget {

  @override
  _DashBoardState createState() => new _DashBoardState();
}

class _DashBoardState extends State<DashBoard> with TickerProviderStateMixin {

  int _currentIndex = 0;
  int _pState = 0;

  void _selectedTab(int index) {
    setState(() {
      _currentIndex = index;
      _pState=_currentIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    var pages = [new  HomePage(), new  HomePage(), new HomePage(), new HomePage()];
    return Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: FABBottomAppBar(
        color: Colors.black,
        backgroundColor: AppColors.white_50,
        selectedColor: Colors.red,
        notchedShape: CircularNotchedRectangle(),
        onTabSelected: _selectedTab,
        items: [
          FABBottomAppBarItem(iconData: Icons.home_outlined),
          FABBottomAppBarItem(iconData: Icons.favorite_outline),
          FABBottomAppBarItem(iconData: Icons.notifications_none),
          FABBottomAppBarItem(iconData: Icons.person_outline),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_shopping_cart,color: AppColors.white_00,),
        backgroundColor: AppColors.primaryColor,
        onPressed: (){

        },
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

}
