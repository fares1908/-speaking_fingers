import 'package:flutter/material.dart';
import 'package:proj/themes/Font_Styles.dart';
import 'package:proj/widgets/custom_button.dart';
import 'package:proj/widgets/custom_text_feild.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:proj/widgets/logout_button.dart';
import 'package:proj/widgets/update_button.dart';
class EditProfile_screen extends StatelessWidget {
  const EditProfile_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              SvgPicture.asset('images/profile.svg',
               width: 400,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 22),
            child: Center(
              child: Positioned(
                    top: 56, // Adjust position as needed
                    left: 147, // Adjust position as needed
                    child: Column(
                      children: [
              Text(
                "Edit Profile",
                style: TextStyle(
                  color: Colors.black,
                   fontSize: 16.0,
                   fontFamily: 'Mulish',
                          fontWeight: FontWeight.w700,),
              ),
              Center(
                child: CircleAvatar(
                  radius: 92,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius:88,
                    backgroundImage: AssetImage('images/profilepic.jpeg'),
                
                  ),
                ),
              ),
              GestureDetector(
                onTap:(){},
                child: Text(
                  "Change Profile",
                  style: TextStyle(
                    color: Colors.black,
                     fontSize: 16.0,
                     fontFamily: 'Mulish',
                            fontWeight: FontWeight.w700,),
                ),
              ),
                      ],
                    ),
              ),
            ),
          ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left:15),
                child: Text(
                  'Username',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontFamily: 'Mulish',
                    fontWeight: FontWeightHelper.extraBold,
                  ),
                ),
              ),
            ],
          ),
          CustomTextField(),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left:15),
                child: Text(
                  'Email',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontFamily: 'Mulish',
                    fontWeight: FontWeightHelper.extraBold,
                  ),
                ),
              ),
            ],
          ),
          CustomTextField(),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left:15),
                child: Text(
                  'Phone Number',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontFamily: 'Mulish',
                    fontWeight: FontWeightHelper.extraBold,
                  ),
                ),
              ),
            ],
          ),
          CustomTextField(),
            Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left:15),
                child: Text(
                  'Password',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontFamily: 'Mulish',
                    fontWeight: FontWeightHelper.extraBold,
                  ),
                ),
              ),
            ],
          ),
          CustomTextField(),
          Padding(
            padding: const EdgeInsets.only(top:20),
            child: UpdateButton(),
          ),
          Padding(
            padding: const EdgeInsets.only(top:6),
            child: LogOutButton(),
          ),


        ],
      ),
    );
  }
}