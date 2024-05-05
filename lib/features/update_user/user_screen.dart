
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:speaking_fingers/core/routes/AppRoute/routersName.dart';
import 'package:speaking_fingers/features/auth/widgets/custom_matrialbutton.dart';

import '../../core/class/my_services.dart';
import '../../core/theming/text_styles.dart';
import '../auth/widgets/custom_textfield.dart';


class UpdateUserScreen extends StatelessWidget {
  const UpdateUserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    MyServices services = Get.find();
    Get.put(MyServices());
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Image.asset(
                  'assets/images/profile_shape.png',
                  fit: BoxFit.fill,
                  height: 400.h,
                  width: double.infinity,
                ),
        
                Positioned(
                    top: 50,
                    child: Text('Edit Profile',
                    style: TextStyles.font20WhiteSemiBold.copyWith(color: Colors.black),
                    )),
                Positioned(
                    top: 30,
                    left: 5,
                    child:IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: Icon(Icons.arrow_back_ios_new_rounded),
                    )
                ),
                Padding(
                  padding: EdgeInsets.all(40.0),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 80,
                        backgroundImage: NetworkImage('https://youssifallam.pythonanywhere.com/media/default.jpg'), // Replace with actual image URL
                      ),
                      SizedBox(height: 10,),
        
                  TextButton(
                        onPressed: () {  print('dd');},
                        child: Text(
                          'Change Picture',
                          style: TextStyles.font20WhiteSemiBold.copyWith(color: Colors.black,fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
        
        
              ],
            ),
        
            const Padding(
              padding:
              EdgeInsets.only(left: 10.0, right:10),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
        
                  ProfileInfoSection()],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
              child: CustomButtonAuth(
                textButton: 'Edit Profile',
                onPressed: () {
                  Get.toNamed(AppRouter.editProfile);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
              child: CustomButtonAuth(
                textButton: 'Logout',
                onPressed: () {
                  services.sharedPreferences.clear();
                  Get.offAllNamed(AppRouter.login);
                },
              ),
            ),
          ],
        ),
      ),

    );
  }
}

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightBlue.shade50,
      child: Column(
        children: [
          const SizedBox(height: 16),
          const CircleAvatar(
            radius: 60,
            backgroundImage: NetworkImage('https://youssifallam.pythonanywhere.com/media/default.jpg'), // Replace with actual image URL
          ),
          const SizedBox(height: 8),
          const Text(
            'Your Name',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              // Edit profile action
            },
            style: ElevatedButton.styleFrom(

              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
            ),
            child: const Text('Edit Profile'),
          ),
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}

class ProfileInfoSection extends StatelessWidget {
  const ProfileInfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    MyServices services = Get.find();
    return Container(

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProfileInfoTile(title: 'Your  Name', content: services.sharedPreferences.getString('name') ?? ''),
          ProfileInfoTile(title: 'Email', content: services.sharedPreferences.getString('email') ?? ''),
          ProfileInfoTile(title: 'Phone Number', content: services.sharedPreferences.getString('phone') ?? ''),
          const ProfileInfoTile(title: 'Password', content: '**********'),
          const SizedBox(height: 24),

        ],
      ),
    );
  }
}

class ProfileInfoTile extends StatelessWidget {
  final String title;
  final String content;

  const ProfileInfoTile({Key? key, required this.title, required this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
    mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.bold,
          ),
        ),

        CustomTextField(
            valid: (p0) {

            },
            isNumber: false,

          text:content,
        )
      ],
    );
  }
}

class ContentSection extends StatelessWidget {
  const ContentSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.favorite_border_outlined, ),
      title: const Text('Favourite Videos'),
      trailing: const Icon(Icons.chevron_right),
      onTap: () {
        Get.toNamed(AppRouter.favourite);
      },
    );
  }
}