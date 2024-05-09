import 'package:flutter/material.dart';
import 'package:proj/screens/edit_profile_screen.dart';
import 'package:proj/screens/fav_screen.dart';
import 'package:proj/screens/login_screen.dart';
import 'package:proj/screens/onboarding2_screen.dart';
import 'package:proj/screens/profile_screen.dart';

void main() {
  runApp( Proj());
}

class Proj extends StatelessWidget {
  const Proj({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Login_screen(),
    );
  }
}