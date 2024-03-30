
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:speaking_fingers/core/routes/AppRoute/routersName.dart';
import 'package:speaking_fingers/features/auth/widgets/custom_matrialbutton.dart';

import '../../../core/class/my_services.dart';
import '../../auth/widgets/custom_textfield.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Image.asset(
                'assets/images/profile_shape.png',
                fit: BoxFit.fill,
                height: 300.h,
                width: double.infinity,
              ),
              const Padding(
                padding: EdgeInsets.all(30.0),
                child: CircleAvatar(
                  radius: 80,
                  backgroundImage: NetworkImage('https://youssifallam.pythonanywhere.com/media/default.jpg'), // Replace with actual image URL
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20, top: 10),
            child: Column(
              children: [
                const ProfileInfoSection(),
                const SizedBox(
                  height: 10,
                ),
                const ContentSection(),

                CustomButtonAuth(
                  textButton: 'Edit Profile',
                  onPressed: () {
                    Get.toNamed(AppRouter.editProfile);
                  },
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}

// The rest of your classes remain the same

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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Text(
        //   'about you',
        //   style: TextStyle(
        //     color: Colors.black54,
        //     fontWeight: FontWeight.bold,
        //   ),
        // ),
        // SizedBox(height: 8),

        ProfileInfoTile(title: 'Email', content: services.sharedPreferences.getString('email') ?? ''),
        ProfileInfoTile(title: 'Phone Number', content: services.sharedPreferences.getString('phone') ?? ''),
        const ProfileInfoTile(title: 'Password', content: '**********'),


      ],
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
        // Text(
        //   content,
        //   style: TextStyle(
        //     color: Colors.black54,
        //   ),
        // ),
        CustomTextField(
            valid: (p0) {

            },
            isNumber: false,
          readOnly: true,
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