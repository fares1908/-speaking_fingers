import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:speaking_fingers/core/theming/colors.dart';
import 'package:speaking_fingers/core/theming/text_styles.dart';
import 'package:speaking_fingers/features/on_boarding//ui/onBoarding1.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  static const String routeName = 'splash';

  @override
  State<SplashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(
        const Duration(seconds: 4),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => onBoardingScreen())));

    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        colors: [
          AppColors.stackShape,
          AppColors.minColor,
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Image.asset('assets/images/pattern.png'),
          Image.asset(
            'assets/images/Group 2.png',
            // width: double.infinity,
            // height: double.infinity,
            // fit: BoxFit.fill,
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
          Image.asset(
            'assets/images/Group 1.png',
            // width: double.infinity,
            // height: double.infinity,
            // fit: BoxFit.fill,
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.05),
          Material(
              color: Colors.transparent,
              child: Text(
                'Speaking Fingers',
                style: TextStyles.font20WhiteBold,
              ))
        ],
      ),
    );
  }
}
