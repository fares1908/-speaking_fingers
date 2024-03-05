import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';

import '../ui/camera_screen.dart';
import '../ui/home_screen.dart';
import '../ui/user_screen.dart';

abstract class HomeScreenBodyController extends GetxController {
  changePage(int index);
}

class HomeScreenBodyControllerImpl extends HomeScreenBodyController {
  int currentPage = 0;
  List<Widget> listPage = [
    HomeScreen(),
    CameraScreen(),
    UserScreen()
    //
    // const UserScreen(),
  ];

  List<IconData> iconButton = [
    IconlyLight.home,
    IconlyLight.camera,
    IconlyLight.profile,
  ];
  List<String> titles = [
'Home',
    '',
    'Profile'
  ];

  @override
  changePage(int index) {
    currentPage = index;
    update();
  }
}
