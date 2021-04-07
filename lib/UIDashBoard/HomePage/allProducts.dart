import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:groceryapp/Values/AppColors.dart';

class AllProducts extends StatefulWidget {
  @override
  _AllProductsState createState() => _AllProductsState();
}

class _AllProductsState extends State<AllProducts> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: AppColors.appColor3,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 320,
                width: width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/image/grocerry.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 2, sigmaY: 3),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: 55,),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: (){
                                Navigator.pop(context);
                              },
                              child: CircleAvatar(
                                radius: 20,
                                backgroundColor: AppColors.white_00,
                                child: Icon(Icons.arrow_back_ios_rounded,
                                  color: AppColors.black,
                                  size: 20,
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: (){

                              },
                              child: CircleAvatar(
                                radius: 20,
                                backgroundColor: AppColors.white_00,
                                child: Icon(Icons.favorite_outline_rounded,color: AppColors.red_80,),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 35,),
                      Center(
                        child: Text('Natural Bucket',
                          style: TextStyle(
                              fontFamily: 'Montserrat-Semibold',
                              fontSize: 30,
                            color: AppColors.white_00
                          ),)
                      ),
                      SizedBox(height: 25,),
                      Center(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 30),
                          child: Container(
                            decoration: BoxDecoration(
                                color: AppColors.white_00,
                                borderRadius: BorderRadius.circular(30)
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                    child: TextField(
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        prefixIcon: Icon(Icons.search),
                                        hintText: 'Search Products',
                                        hintStyle: TextStyle(
                                            color: AppColors.grey_60,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'montserrat-regular',
                                            fontSize: 12
                                        ),
                                      ),
                                      style: TextStyle(
                                          color: AppColors.black,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'montserrat-semibold',
                                          fontSize: 14
                                      ),
                                    )
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 5,vertical: 3),
                                  child: Container(
                                    width: 40,
                                    height: 45,
                                    child: Image.asset('assets/icon/tool.png'),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: height,
                transform: Matrix4.translationValues(0, -55, 0),
                width: width,
                decoration: BoxDecoration(
                  color: AppColors.appColor3,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50)
                  )
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 30,),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 30,right: 30),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                              decoration: BoxDecoration(
                                color: AppColors.white_00,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(50.0),
                                  topRight: Radius.circular(50.0),
                                  bottomLeft: Radius.circular(50.0),
                                  bottomRight: Radius.circular(50.0),
                                )
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                    radius: 30,
                                    backgroundColor: AppColors.yellow_20,
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Image.asset(
                                        'assets/icon/bread.png',
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 20,),
                                  Text('Bread',style: TextStyle(
                                    fontWeight: FontWeight.bold
                                  ),),
                                  SizedBox(height: 15,),
                                ],
                              ),
                            ),
                            SizedBox(width: 15,),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                              decoration: BoxDecoration(
                                color: AppColors.primaryColor,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(50.0),
                                  topRight: Radius.circular(50.0),
                                  bottomLeft: Radius.circular(50.0),
                                  bottomRight: Radius.circular(50.0),
                                )
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                    radius: 30,
                                    backgroundColor: AppColors.primaryBackGroundColor,
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Image.asset(
                                        'assets/icon/fruit.png',
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 20,),
                                  Text('Fruits',style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.white_00
                                  ),),
                                  SizedBox(height: 15,),

                                ],
                              ),
                            ),
                            SizedBox(width: 15,),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                              decoration: BoxDecoration(
                                color: AppColors.white_00,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(50.0),
                                  topRight: Radius.circular(50.0),
                                  bottomLeft: Radius.circular(50.0),
                                  bottomRight: Radius.circular(50.0),
                                )
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                    radius: 30,
                                    backgroundColor: AppColors.blue_10,
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Image.asset(
                                        'assets/icon/milk.png',
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 20,),
                                  Text('Milk',style: TextStyle(
                                    fontWeight: FontWeight.bold
                                  ),),
                                  SizedBox(height: 15,),

                                ],
                              ),
                            ),
                            SizedBox(width: 15,),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                              decoration: BoxDecoration(
                                color: AppColors.white_00,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(50.0),
                                  topRight: Radius.circular(50.0),
                                  bottomLeft: Radius.circular(50.0),
                                  bottomRight: Radius.circular(50.0),
                                )
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                    radius: 30,
                                    backgroundColor: AppColors.yellow_10,
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Image.asset(
                                        'assets/icon/rice.png',
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 20,),
                                  Text('Rice',style: TextStyle(
                                    fontWeight: FontWeight.bold
                                  ),),
                                  SizedBox(height: 15,),

                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 30,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                              child: Text('Fruits',
                                style: TextStyle(
                                    fontFamily: 'Montserrat-semibold',
                                    fontSize: 18
                                ),)
                          ),
                          Text('See All',
                            style: TextStyle(
                                fontFamily: 'Montserrat-Semibold',
                                fontSize: 14,
                                color: AppColors.red_50
                            ),)

                        ],
                      ),
                    ),
                    SizedBox(height: 30,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                             Expanded(
                               child: Container(
                                 height: 210,
                                 decoration: BoxDecoration(
                                 color: AppColors.white_00,
                                   borderRadius: BorderRadius.circular(5.0)
                                 ),
                                 padding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                                 child: Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   mainAxisAlignment: MainAxisAlignment.start,
                                   children: [
                                     ClipRRect(
                                       borderRadius: BorderRadius.circular(4.0),
                                       child: Image.asset('assets/image/straw.jpeg',
                                         width: width,
                                         height: 120,
                                         fit: BoxFit.fill,),
                                     ),
                                     SizedBox(height: 7,),
                                     Text('StrawBerry',
                                       style: TextStyle(
                                           fontWeight: FontWeight.bold,
                                         fontSize: 12,
                                         color: AppColors.black
                                       ),),
                                     SizedBox(height: 10,),
                                     RichText(
                                         text: TextSpan(
                                           children: [
                                             TextSpan(
                                               text: '₹ ',
                                               style: TextStyle(
                                                 fontFamily: 'montserrat-semibold',
                                                 fontSize: 14,
                                                 color: AppColors.black
                                               ),
                                             ),
                                             TextSpan(
                                               text: '300',
                                               style: TextStyle(
                                                 fontFamily: 'montserrat-Extrabold',
                                                 fontSize: 16,
                                                 color: AppColors.black
                                               ),
                                             ),
                                             TextSpan(
                                               text: '/kg  ',
                                               style: TextStyle(
                                                   fontFamily: 'montserrat-semibold',
                                                   fontSize: 12,
                                                   color: AppColors.black
                                               ),
                                             ),
                                           ]
                                         )
                                     ),
                                     Spacer(),
                                     Container(
                                       alignment: Alignment.bottomRight,
                                       child: Image.asset('assets/icon/add.png',
                                         height: 25,width: 25,
                                         fit: BoxFit.fill,
                                       ),
                                     ),
                                   ],
                                 ),
                               ),
                             ),
                             SizedBox(width: 15,),
                             Expanded(
                               child: Container(
                                 height: 210,
                                 decoration: BoxDecoration(
                                 color: AppColors.white_00,
                                   borderRadius: BorderRadius.circular(5.0)
                                 ),
                                 padding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                                 child: Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   mainAxisAlignment: MainAxisAlignment.start,
                                   children: [
                                     ClipRRect(
                                       borderRadius: BorderRadius.circular(4.0),
                                       child: Image.asset('assets/image/apple.jpeg',
                                         width: width,
                                         height: 120,
                                         fit: BoxFit.fill,),
                                     ),
                                     SizedBox(height: 7,),
                                     Text('Apple',
                                       style: TextStyle(
                                         fontWeight: FontWeight.bold,
                                         fontSize: 12,
                                         color: AppColors.black
                                       ),),
                                     SizedBox(height: 10,),
                                     RichText(
                                         text: TextSpan(
                                           children: [
                                             TextSpan(
                                               text: '₹ ',
                                               style: TextStyle(
                                                 fontFamily: 'montserrat-semibold',
                                                 fontSize: 14,
                                                 color: AppColors.black
                                               ),
                                             ),
                                             TextSpan(
                                               text: '200',
                                               style: TextStyle(
                                                 fontFamily: 'montserrat-Extrabold',
                                                 fontSize: 16,
                                                 color: AppColors.black
                                               ),
                                             ),
                                             TextSpan(
                                               text: '/kg  ',
                                               style: TextStyle(
                                                   fontFamily: 'montserrat-semibold',
                                                   fontSize: 12,
                                                   color: AppColors.black
                                               ),
                                             ),
                                           ]
                                         )
                                     ),
                                     Spacer(),
                                     Container(
                                       alignment: Alignment.bottomRight,
                                       child: Image.asset('assets/icon/health.png',
                                         height: 25,width: 25,
                                         fit: BoxFit.fill,
                                       ),
                                     ),
                                   ],
                                 ),
                               ),
                             ),
                            ],
                          ),
                          SizedBox(height: 15,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                             Expanded(
                               child: Container(
                                 height: 210,
                                 decoration: BoxDecoration(
                                 color: AppColors.white_00,
                                   borderRadius: BorderRadius.circular(5.0)
                                 ),
                                 padding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                                 child: Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   mainAxisAlignment: MainAxisAlignment.start,
                                   children: [
                                     ClipRRect(
                                       borderRadius: BorderRadius.circular(4.0),
                                       child: Image.asset('assets/image/pineapple.jpeg',
                                         width: width,
                                         height: 120,
                                         fit: BoxFit.fill,),
                                     ),
                                     SizedBox(height: 7,),
                                     Text('Pineapple',
                                       style: TextStyle(
                                           fontWeight: FontWeight.bold,
                                         fontSize: 12,
                                         color: AppColors.black
                                       ),),
                                     SizedBox(height: 10,),
                                     RichText(
                                         text: TextSpan(
                                           children: [
                                             TextSpan(
                                               text: '₹ ',
                                               style: TextStyle(
                                                 fontFamily: 'montserrat-semibold',
                                                 fontSize: 14,
                                                 color: AppColors.black
                                               ),
                                             ),
                                             TextSpan(
                                               text: '300',
                                               style: TextStyle(
                                                 fontFamily: 'montserrat-Extrabold',
                                                 fontSize: 16,
                                                 color: AppColors.black
                                               ),
                                             ),
                                             TextSpan(
                                               text: '/kg  ',
                                               style: TextStyle(
                                                   fontFamily: 'montserrat-semibold',
                                                   fontSize: 12,
                                                   color: AppColors.black
                                               ),
                                             ),
                                           ]
                                         )
                                     ),
                                     Spacer(),
                                     Container(
                                       alignment: Alignment.bottomRight,
                                       child: Image.asset('assets/icon/health.png',
                                         height: 25,width: 25,
                                         fit: BoxFit.fill,
                                       ),
                                     ),
                                   ],
                                 ),
                               ),
                             ),
                             SizedBox(width: 15,),
                             Expanded(
                               child: Container(
                                 height: 210,
                                 decoration: BoxDecoration(
                                 color: AppColors.white_00,
                                   borderRadius: BorderRadius.circular(5.0)
                                 ),
                                 padding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                                 child: Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   mainAxisAlignment: MainAxisAlignment.start,
                                   children: [
                                     ClipRRect(
                                       borderRadius: BorderRadius.circular(4.0),
                                       child: Image.asset('assets/image/pomegranate.jpeg',
                                         width: width,
                                         height: 120,
                                         fit: BoxFit.fill,),
                                     ),
                                     SizedBox(height: 7,),
                                     Text('Pomegranate',
                                       style: TextStyle(
                                           fontWeight: FontWeight.bold,
                                         fontSize: 12,
                                         color: AppColors.black
                                       ),),
                                     SizedBox(height: 10,),
                                     RichText(
                                         text: TextSpan(
                                           children: [
                                             TextSpan(
                                               text: '₹ ',
                                               style: TextStyle(
                                                 fontFamily: 'montserrat-semibold',
                                                 fontSize: 14,
                                                 color: AppColors.black
                                               ),
                                             ),
                                             TextSpan(
                                               text: '300',
                                               style: TextStyle(
                                                 fontFamily: 'montserrat-Extrabold',
                                                 fontSize: 16,
                                                 color: AppColors.black
                                               ),
                                             ),
                                             TextSpan(
                                               text: '/kg  ',
                                               style: TextStyle(
                                                   fontFamily: 'montserrat-semibold',
                                                   fontSize: 12,
                                                   color: AppColors.black
                                               ),
                                             ),
                                           ]
                                         )
                                     ),
                                     Spacer(),
                                     Container(
                                       alignment: Alignment.bottomRight,
                                       child: Image.asset('assets/icon/add.png',
                                         height: 25,width: 25,
                                         fit: BoxFit.fill,
                                       ),
                                     ),
                                   ],
                                 ),
                               ),
                             ),
                            ],
                          ),
                        ],
                      ),

                    )

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
