
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:speaking_fingers/core/routes/AppRoute/routersName.dart';
import 'package:speaking_fingers/features/auth/forget_password/ui/screen/forget_password.dart';
import 'package:speaking_fingers/features/auth/sign_up/ui/screens/siginup_screen.dart';
import 'package:speaking_fingers/features/on_boarding/ui/screens/on_boarding.dart';
import 'package:speaking_fingers/features/on_boarding/ui/screens/on_boarding1.dart';

import '../../../features/auth/login/ui/login_screen.dart';
import '../../../features/home/ui/home-body.dart';
import '../../../features/on_boarding/ui/screens/on_boarding2.dart';
import '../../class/my_middel_ware.dart';
List<GetPage<dynamic>> ?routes=[
  GetPage(name: '/', page:() => const OnBoarding(),
  //     middlewares:[
  //   MyMiddleWare()
  // ]
  ),
  GetPage(name: AppRouter.onBoarding1, page:() =>const OnBoardingScreen1()),
  GetPage(name: AppRouter.onBoarding2, page:() =>const OnBoardingScreen2()),
  GetPage(name: AppRouter.login, page:() =>const LoginScreen()),
  GetPage(name: AppRouter.register, page:() => const SignupScreen()),
  GetPage(name: AppRouter.forgetPassword, page:() =>const ForgetPassword()),

];