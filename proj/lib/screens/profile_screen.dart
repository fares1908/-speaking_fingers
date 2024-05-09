import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proj/themes/Font_Styles.dart';
import 'package:proj/widgets/EditProfile_button.dart';
import 'package:proj/widgets/custom_button.dart';
import 'package:proj/widgets/custom_text_feild.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Profile_screen extends StatelessWidget {
  const Profile_screen({super.key});

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
          const Padding(
            padding: EdgeInsets.only(top: 40),
            child: Center(
              child: Positioned(
                    top: 56, // Adjust position as needed
                    left: 147, // Adjust position as needed
                    child: Column(
                      children: [
              Text(
                "User1",
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
                      ],
                    ),
              ),
            ),
          ),
            ],
          ),
          
          Container(
             decoration:const BoxDecoration(
                color: Color(0xFFCAE7EE
                ),
              ) ,
              width: 400,
              height:29,
              child:Padding(
                padding: const EdgeInsets.only(left:15),
                child: const Text('about you',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Mulish',
                    fontWeight: FontWeightHelper.extraBold,
                  ),
                  ),
              ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 15),
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
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 15),
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
            const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 15),
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
            padding: const EdgeInsets.only(top:5),
            child: Container(
               decoration:const BoxDecoration(
                  color: Color(0xFFCAE7EE
                  ),
                ) ,
                width: 400,
                height:29,
                child:Padding(
                  padding: const EdgeInsets.only(left:15),
                  child: const Text('content',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Mulish',
                      fontWeight: FontWeightHelper.extraBold,
                    ),
                    ),
                ),
            ),
          ),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
            
             Padding(
               padding: const EdgeInsets.only(left:8),
               child: const Icon(
                Icons.favorite_border_outlined,
                color: Colors.black, 
                size: 24.0, 
               ),
             ),
              Padding(
                padding: const EdgeInsets.only(left:8),
                child: const Text(
                  'Favourite Videos',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontFamily: 'Mulish',
                    fontWeight: FontWeightHelper.extraBold,
                  ),
                ),
              ),
                
              GestureDetector(
                onTap: (){},
                child: Padding(
                  padding: const EdgeInsets.only(left:200),
                  child: Text(
                    '>',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'Mulish',
                      fontWeight: FontWeightHelper.extraBold,
                    ),
                  ),
                ),
              ),
              
            ],
          ),
          GestureDetector(
            onTap: (){},
            child: EditButton()),
          Row(children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(35,0,35,35),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top:25),
                    child: GestureDetector(
                      onTap: (){},
                      child: SvgPicture.asset('images/home.svg')),
                  ),
                  Text('Home',
                  style: TextStyle(
                    color: Color(0XFFB7D9E2),
                    fontSize: 12,
                  ),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:35,right:30),
              child: GestureDetector(
                onTap:(){},
                child: SvgPicture.asset('images/Camera.svg')),
            ),
            Padding(
              padding: const EdgeInsets.only(left:35),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: (){},
                    child: SvgPicture.asset('images/user.svg')),
                  Text('Profile',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 12,
                  ),),
                ],
              ),
            ),
          
          ],
          ),
        ],
      ),
  
      
    );
    
  }
}