import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:speaking_fingers/core/theming/colors.dart';
import 'package:speaking_fingers/core/theming/spacing.dart';
import 'package:speaking_fingers/core/theming/text_styles.dart';
import 'package:speaking_fingers/features/auth/sign_up/ui/screens/siginup_screen.dart';

class OnBoardingScreen1 extends StatelessWidget {
  const OnBoardingScreen1({super.key});
  static const String routeName = 'onboard';
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  'assets/images/Shape 1.png',
                  fit: BoxFit.fitHeight,
                  height: 310.h,
                  width: 375.w,
                ),
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
                    width: 60.w,
                    height: 60.h,
                    child: Padding(
                      padding: EdgeInsets.only(right: 12.w),
                      child: SvgPicture.asset('assets/svg/logo.svg'),
                    ),
                  ),
                ),
                Positioned(
                  top: 121,
                  left: 12,
                  child: SizedBox(
                    width: 231.w,
                    height: 35.h,
                    child: const Text(
                      'Speaking Fingers',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 160,
                  left: 12,
                  child: SizedBox(
                    width: 200.w,
                    height: 85.h,
                    child: Text(
                        'Professional application to \n convert sign language to\n text & record',
                        style: TextStyles.font13BlackRegular),
                  ),
                ),
              ],
            ),
            Image.asset('assets/images/illustration.png',
                height: 304.h, width: double.infinity),
            Text(
              'open camera and speak\nby sign language',
              style: TextStyles.font28BlackRegular,
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
