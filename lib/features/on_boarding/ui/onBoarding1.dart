import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:speaking_fingers/core/theming/colors.dart';
import 'package:speaking_fingers/core/theming/text_styles.dart';
import 'package:speaking_fingers/features/auth/sign_up/ui/screens/siginup_screen.dart';



class onBoardingScreen extends StatelessWidget {
  const onBoardingScreen({super.key});
  static const String routeName = 'onboard';
  @override
  Widget build(BuildContext context) {
    return

      Scaffold(
        body: SingleChildScrollView(
          child: Column(
              children: [
          Stack(
          children: [
            Image.asset('assets/images/Shape 1.png',fit: BoxFit.fill,height: 305.h,width:375.w,),


          Positioned(
          top: 0,
          left: 180,
          child: SizedBox(
              width: 211.w,
              height: 172.h,
              child: Image.asset(
                'assets/images/Sub shape 1.png',
                fit: BoxFit.fill,
              )),
        ),
            Positioned(
              top: 73,
              left: 12,
              child: SizedBox(
                  width: 50.w,
                  height: 50.h,
                  child: Image.asset('assets/images/map_sign-language.png',
                    fit: BoxFit.fill,
                  )),
            ),
            Positioned(
              top: 121,
              left: 12,
              child: SizedBox(
                width: 231.w,
                height: 35.h,
                child: Text('Speaking Fingers',style: TextStyle(
                  fontSize:24 ,fontWeight: FontWeight.w700,
                  decoration: TextDecoration.underline,
                ), ),),
            ),
            Positioned(
              top: 160,
              left: 12,
              child: SizedBox(
                  width: 200.w,
                  height: 85.h,
                  child: Text('Professional application to \n convert sign language to\n text & record',style:TextStyles.font13BlackRegular ),),
            ),

        ],
      ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Image.asset('assets/images/illustration.png',height: 330.h,width:314.w)
                ],),
                Row(

                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text('open camera and speak\nby sign language',style: TextStyles.font28BlackRegular,)
                ],)
                
  ],),
    ),

    );
  }
}