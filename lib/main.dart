import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:speaking_fingers/features/on_boarding//ui/onBoarding1.dart';
import 'package:speaking_fingers/features/splash/SplashScreean.dart';

import 'features/auth/forget_password/ui/screen/forget_password.dart';
import 'features/auth/sign_up/ui/screens/siginup_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return   ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        title: 'Flutter Dem',
        theme: ThemeData(
            fontFamily: 'Mulish'
        ),
        debugShowCheckedModeBanner: false,
          initialRoute: SplashScreen.routeName,
          routes: {
            SplashScreen.routeName :(context)=>SplashScreen(),
            onBoardingScreen.routeName:(context)=>onBoardingScreen(),
            SignupScreen.routeName:(context)=>SignupScreen()
          },
        home: const ForgetPassword(),
      ),
    );
  }
}

