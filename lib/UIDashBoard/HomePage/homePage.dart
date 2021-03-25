import 'package:flutter/material.dart';
import 'package:groceryapp/Values/AppColors.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.appColor4,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: ListView(
              shrinkWrap: true,
              children: [
                Container(
                  height: 210,
                  decoration: BoxDecoration(),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(height: 20,),
                        Text('Hello Sachin!',
                        style: TextStyle(
                          color: AppColors.white_00,
                          fontWeight: FontWeight.bold
                        ),),
                        SizedBox(height: 15,),
                        Text('Discover',
                          style: TextStyle(
                              color: AppColors.white_00,
                              fontWeight: FontWeight.bold,
                            fontFamily: 'montserrat-extrabold',
                            fontSize: 20
                          ),),
                        SizedBox(height: 5,),
                        Text('Grocery and Food',
                          style: TextStyle(
                              color: AppColors.white_00,
                              fontWeight: FontWeight.bold,
                            fontFamily: 'montserrat-extrabold',
                            fontSize: 20
                          ),),
                        SizedBox(height: 20,),
                        Container(
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
                                      hintText: 'Find nearest grocery and food',
                                      hintStyle: TextStyle(
                                          color: AppColors.black,
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
                                padding: EdgeInsets.symmetric(horizontal: 3,vertical: 3),
                                child: Container(
                                  width: 40,
                                  child: Image.asset('assets/icon/tool.png',
                                  color: AppColors.appColor4,),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),

                Container(
                  height: height,
                  width: width,
                  decoration: BoxDecoration(
                    color: AppColors.primaryBackGroundColor,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50)
                    )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(height: 20,),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                                child: Text('Recent Grocerys',
                                style: TextStyle(
                                  fontFamily: 'Montserrat-semibold',
                                  fontSize: 16
                                ),)
                            ),
                            Text('See All',
                              style: TextStyle(
                                  fontFamily: 'Montserrat-Semibold',
                                  fontSize: 13,
                                color: AppColors.red_50
                              ),)

                          ],
                        ),
                        SizedBox(height: 30,),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 235,
                                width: width*0.7,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 180,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage('assets/image/grocerry.jpg'),
                                              fit: BoxFit.fill
                                          ),
                                          borderRadius: BorderRadius.circular(5.0)
                                      ),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.symmetric(horizontal: 6,vertical: 6),
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                Spacer(),
                                                CircleAvatar(
                                                  radius: 15,
                                                  backgroundColor: AppColors.white_00,
                                                  child: Icon(Icons.favorite_outline_rounded,color: AppColors.red_00,),
                                                ),
                                              ],
                                            ),
                                          ),

                                          SizedBox(height: 5,),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: AppColors.white_00,
                                            borderRadius: BorderRadius.circular(3),
                                            boxShadow: [BoxShadow(
                                              color: AppColors.grey_09,
                                              blurRadius: 5.0,
                                            ),]
                                        ),
                                        width: width,
                                        transform: Matrix4.translationValues(0, -20, 0),
                                        padding: EdgeInsets.symmetric(horizontal: 7,vertical: 10),
                                        alignment: Alignment.bottomCenter,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                Expanded(
                                                  child: Text('Natural Bucket',
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 12
                                                    ),),
                                                ),
                                                Text(' 4.9 ',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 12
                                                  ),),
                                                Icon(Icons.star,color: AppColors.yellow_70,size: 15,)
                                              ],
                                            ),
                                            SizedBox(height: 5,),
                                            Text('Daily all products available',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 10,
                                                  color: AppColors.grey_70
                                              ),),
                                          ],
                                        ),
                                      ),
                                    ),

                                  ],
                                ),
                              ),
                              SizedBox(width: 15,),
                              Container(
                                height: 235,
                                width: width*0.7,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 180,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage('assets/image/grocerry.jpg'),
                                              fit: BoxFit.fill
                                          ),
                                          borderRadius: BorderRadius.circular(5.0)
                                      ),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.symmetric(horizontal: 6,vertical: 6),
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                Spacer(),
                                                CircleAvatar(
                                                  radius: 15,
                                                  backgroundColor: AppColors.white_00,
                                                  child: Icon(Icons.favorite_outline_rounded,color: AppColors.red_00,),
                                                ),
                                              ],
                                            ),
                                          ),

                                          SizedBox(height: 5,),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: AppColors.white_00,
                                            borderRadius: BorderRadius.circular(3),
                                            boxShadow: [BoxShadow(
                                              color: AppColors.grey_09,
                                              blurRadius: 5.0,
                                            ),]
                                        ),
                                        width: width,
                                        transform: Matrix4.translationValues(0, -20, 0),
                                        padding: EdgeInsets.symmetric(horizontal: 7,vertical: 10),
                                        alignment: Alignment.bottomCenter,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                Expanded(
                                                  child: Text('Natural Bucket',
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 12
                                                    ),),
                                                ),
                                                Text(' 4.9 ',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 12
                                                  ),),
                                                Icon(Icons.star,color: AppColors.yellow_70,size: 15,)
                                              ],
                                            ),
                                            SizedBox(height: 5,),
                                            Text('Daily all products available',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 10,
                                                  color: AppColors.grey_70
                                              ),),
                                          ],
                                        ),
                                      ),
                                    ),

                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                                child: Text('Best Selling Products',
                                  style: TextStyle(
                                      fontFamily: 'Montserrat-semibold',
                                      fontSize: 16
                                  ),)
                            ),
                            Text('See All',
                              style: TextStyle(
                                  fontFamily: 'Montserrat-Semibold',
                                  fontSize: 13,
                                  color: AppColors.red_50
                              ),)

                          ],
                        ),
                        SizedBox(height: 30,),
                        Container(
                          width: width*0.85,
                          height: 100,
                          decoration: BoxDecoration(
                              color: AppColors.white_00,
                              borderRadius: BorderRadius.circular(3),
                              boxShadow: [BoxShadow(
                                color: AppColors.grey_09,
                                blurRadius: 3.0,
                              ),]
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(4.0),
                                  child: Image.asset('assets/image/food.jpeg',
                                  width: 100,
                                  height: height,
                                  fit: BoxFit.fill,),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                    padding: EdgeInsets.symmetric(vertical: 10),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Expanded(
                                            child: Text('Green Vegetables',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold
                                            ),),
                                          ),
                                          Text('₹',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold
                                            ),),
                                          Text('34',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold
                                            ),),
                                          Text('/kg  ',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold
                                            ),),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),


                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
