import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../widgets/custom_matrialbutton.dart';
import '../../widgets/custom_row_auth.dart';
import '../../widgets/custom_textfield.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
  static const String routeName='sing';
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
                Image.asset(
                  'assets/images/Shape 1.png',
                  fit: BoxFit.fill,
                  height: 410.h,
                  width: double.infinity,
                ),
                Positioned(
                  top: 0,
                  left: 180.w,
                  child: SizedBox(
                      width: 211.w,
                      height: 222.h,
                      child: Image.asset(
                        'assets/images/Sub shape 1.png',
                        fit: BoxFit.fill,
                      )),
                ),


                Positioned(
                  top: 200.h,
                  left: 5.w,
                  child: SizedBox(
                    width: 500.w,
                    height: 115.h,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                              Text(
                            'Welcome back',
                            style: TextStyles.font36BlackExtraBold
                                ),
                        Text(
                            'sign in to access your account',
                            style: TextStyles.font13BlackRegular
                                .copyWith(fontSize: 16)),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(
              height: 20,
            ),
            Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTextField(
                      isNumber: false,
                      valid: (p0) {},
                      text: 'Email address',
                      suffixIcon: Icons.email_outlined),
                  const SizedBox(
                    height: 10,
                  ),

                  CustomTextField(
                    isNumber: false,
                    valid: (p0) {},
                    text: 'Password',
                    suffixIcon: Icons.lock_outline,
                  ),
                  const SizedBox(
                    height: 50,
                  ),

                  CustomButtonAuth(
                    textButton: 'Next',
                    onPressed: () {

                    },
                    icon: Icons.arrow_forward_ios,
                  ),
                  CustomAuthRow(
                    text: 'New member?',
                    textButton: 'Register now',
                    onPressed: () {},
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

