import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proj/themes/Font_Styles.dart';
import 'package:proj/widgets/custom_button.dart';
import 'package:proj/widgets/custom_text_feild.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Fav_screen extends StatelessWidget {
  const Fav_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              SvgPicture.asset('images/fav.svg',
               width: 400,
          ),
          Positioned(
      top: 50, // Adjust position as needed
      left: 5, // Adjust position as needed
      
      child:
       Row(
        mainAxisAlignment: MainAxisAlignment.start,
         children: [
          IconButton(
               icon: Icon(Icons.arrow_back),
               onPressed: () {
               print('Button pressed!');
  },
),
           Text(
            "Your Favourite",
            style: TextStyle(
              color: Colors.black,
               fontSize: 16.0,
               fontFamily: 'Mulish',
                      fontWeight: FontWeightHelper.bold),
                 ),
                 
                 Padding(
                   padding: const EdgeInsets.only(left:170),
                   child: CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius:18,
                      backgroundImage: AssetImage('images/profilepic.jpeg'),
                                   
                    ),
                                   ),
                 ),
         ],
       ),
          ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8 , horizontal: 8),
                  child: Column(
                    children: [
                      Container(
                        decoration:BoxDecoration(
                        color: Color(0xFFD9D9D9),
                       borderRadius: BorderRadius.circular(10),
                       border: Border.all(
                       width: 1,
                       color: Colors.black,
                                      ),
                      ) ,
                      width: 160,
                      height:104 ,
                      ),
                      Row(
                        children: [
                          Text('video name',
                          style: TextStyle(
                            color:Colors.black,
                            fontSize: 14,
                            fontFamily: 'Mulish',
                            fontWeight: FontWeightHelper.bold,

                          ),),
                          Padding(
                            padding: const EdgeInsets.only(left:40),
                            child: Icon(Icons.star,
                            color:Colors.black),
                          ),

                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8 , horizontal: 8),
                  child: Column(
                    children: [
                      Container(
                        decoration:BoxDecoration(
                        color: Color(0xFFD9D9D9),
                        borderRadius: BorderRadius.circular(10),
                       border: Border.all(
                       width: 1,
                       color: Colors.black,
                                      ),
                      ) ,
                      width: 160,
                      height:104 ,
                      ),
                      Row(
                        children: [
                          Text('video name',
                          style: TextStyle(
                            color:Colors.black,
                            fontSize: 14,
                            fontFamily: 'Mulish',
                            fontWeight: FontWeightHelper.bold,

                          ),),
                          Padding(
                            padding: const EdgeInsets.only(left:40),
                            child: Icon(Icons.star,
                            color:Colors.black),
                          ),

                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8 , horizontal: 8),
                  child: Column(
                    children: [
                      Container(
                        decoration:BoxDecoration(
                        color: Color(0xFFD9D9D9),
                       borderRadius: BorderRadius.circular(10),
                       border: Border.all(
                       width: 1,
                       color: Colors.black,
                                      ),
                      ) ,
                      width: 160,
                      height:104 ,
                      ),
                      Row(
                        children: [
                          Text('video name',
                          style: TextStyle(
                            color:Colors.black,
                            fontSize: 14,
                            fontFamily: 'Mulish',
                            fontWeight: FontWeightHelper.bold,

                          ),),
                          Padding(
                            padding: const EdgeInsets.only(left:40),
                            child: Icon(Icons.star,
                            color:Colors.black),
                          ),

                        ],
                      )
                    ],
                  ),
                ),
                
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8 , horizontal: 8),
                  child: Column(
                    children: [
                      Container(
                        decoration:BoxDecoration(
                        color: Color(0xFFD9D9D9),
                        borderRadius: BorderRadius.circular(10),
                       border: Border.all(
                       width: 1,
                       color: Colors.black,
                                      ),
                      ) ,
                      width: 160,
                      height:104 ,
                      ),
                      Row(
                        children: [
                          Text('video name',
                          style: TextStyle(
                            color:Colors.black,
                            fontSize: 14,
                            fontFamily: 'Mulish',
                            fontWeight: FontWeightHelper.bold,

                          ),),
                          Padding(
                            padding: const EdgeInsets.only(left:40),
                            child: Icon(Icons.star,
                            color:Colors.black),
                          ),

                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        Padding(
          padding: const EdgeInsets.only(top:180),
          child: Row(children: [
            Padding(
              padding: const EdgeInsets.all(35),
              child: Column(
                children: [
                  GestureDetector(
                    onTap:(){},
                    child: SvgPicture.asset('images/home.svg')),
                  Text('Home',
                  style: TextStyle(
                    color: Color(0XFFB7D9E2),
                    fontSize: 12,
                  ),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:45,right:30),
              child: GestureDetector(
                onTap:(){},
                child: SvgPicture.asset('images/Camera.svg')),
            ),
            Padding(
              padding: const EdgeInsets.only(left:35),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: (){},
                    child: SvgPicture.asset('images/user.svg')),
                  Text('Profile',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 12,
                  ),),
                ],
              ),
            ),
          
          ],
          ),
        ),
        ],

      ),

    );
  }
}