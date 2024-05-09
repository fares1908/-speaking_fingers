import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:proj/themes/Font_Styles.dart';
import 'package:proj/widgets/custom_button.dart';
import 'package:proj/widgets/custom_text_feild.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';


class Login_screen extends StatelessWidget {
  const Login_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(children:[

           SvgPicture.asset(
            'images/Shape 1.svg',
            width:392.7,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 155, left:20),
            child: Text('Welcome back',
            style: TextStyle(
              color: Color(0XFF252525),
              fontSize: 38,
              fontFamily: 'Mulish',
              fontWeight: FontWeightHelper.extraBold,
            ),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 200, left:20),
            child: Text('sign in to access your account',
            style: TextStyle(
              color: Color(0XFF252525),
              fontSize: 16,
              fontFamily: 'Mulish',
              fontWeight: FontWeightHelper.semiBold,
            ),),
          ),
          Padding(
            padding: const EdgeInsets.only(left:200),
            child: SvgPicture.asset(
              'images/Sub shape 1.svg',
              width:80,
              height:200,
              
            ),
          ),
          ])
           ,
          
          Padding(
            padding: const EdgeInsets.only(top:60 , left:8 , right:8 , bottom:8),
            child: Stack(
              children: [
                CustomTextField(
                  hintText: 'Enter your email'
                ),
            Positioned(
              left: 300,
              top:10,
            
              child: Icon(Icons.mail_outline,
                                size: 28,
                                color: Colors.black.withOpacity(0.50),
                                 ),
            ),
            
              ],
              
            ),
          ),
          
          
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              children:[
                CustomTextField(
                  hintText: 'Password',
                ),
            Positioned(
              left:300,
              top:10,
              child: Icon(Icons.lock_outline,
                            size: 28,
                            color: Colors.black.withOpacity(0.50),
                             ),
            ),
              ] ,
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left:25),
                child: GestureDetector(
                  onTap: (){},
                  child: Container(
                    width: 15,
                    height:15,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      border:Border.all(
                        color: Colors.black.withOpacity(0.60),
                        width:1,
                      ),
                  
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:8.0),
                child: Text('Remember me',
                style: TextStyle(
                  color:Color(0XFF252525),
                  fontSize: 13,
                  fontFamily: 'Mulish',
                  fontWeight: FontWeightHelper.semiBold,
                ),),
              ),
              Padding(
                padding: const EdgeInsets.only(left:100),
                child: GestureDetector(
                  onTap :(){},
                  child: Text('Forget Password ?',
                  style: TextStyle(
                    color:Colors.blue,
                    fontSize: 13,
                    fontFamily: 'Mulish',
                    fontWeight: FontWeightHelper.semiBold,
                  ),),
                ),
              ),

            ],
          ),

         Padding(
           padding: const EdgeInsets.only(top:100),
           child: CustomButton(onTap:(){}),
         ),
         Padding(
           padding: const EdgeInsets.only(top:4 , left: 90),
           child: Row(
            children: [
              Text('New Member?',
                  style: TextStyle(
                    color:Color(0XFF252525),
                    fontSize: 15,
                    fontFamily: 'Mulish',
                    fontWeight: FontWeightHelper.semiBold,
                  ),),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: GestureDetector(
                      onTap :(){},
                      child: Text('Register Now',
                      style: TextStyle(
                        color:Colors.blue,
                        fontSize: 15,
                        fontFamily: 'Mulish',
                        fontWeight: FontWeightHelper.semiBold,
                      ),),
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