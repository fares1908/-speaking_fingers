import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../widgets/custom_textfield.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipPath(
                  clipper: CustomClipperPath(),
                  child: Container(
                    color: AppColors.themeColor,
                    height: 150.h,
                    width: double.infinity,
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  child: SizedBox(
                      width: 120.w,
                      child: Image.asset(
                        'assets/images/Sub shape 2.png',
                        fit: BoxFit.fill,
                      )),
                ),
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Get Started', style: TextStyles.font32BlackExtraBold),
                  Text(
                    'by creating a free account.',
                    style: TextStyles.font14BlackLight,
                  ),
                  SizedBox(
                    height: 100.h,
                  ),
                  CustomTextField(
                    isNumber: false,
                    valid: (p0) {},
                    text: 'Full name',
                    suffixIcon: Icons.person_2_outlined,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomTextField(
                      isNumber: false,
                      valid: (p0) {},
                      text: 'Email address',
                      suffixIcon: Icons.email_outlined),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomTextField(
                    isNumber: true,
                    valid: (p0) {},
                    text: 'phone',
                    suffixIcon: Icons.phone_android_outlined,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomTextField(
                    isNumber: false,
                    valid: (p0) {},
                    text: 'Password',
                    suffixIcon: Icons.lock_outline,
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomClipperPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;
    final path = Path();
    path.lineTo(0, h); //layer 2
    path.quadraticBezierTo(w * 0.4, h - 120, w, h); //layer 4
    path.lineTo(w, 0); //layer 5

    return path; // Make sure to return the non-null value
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
