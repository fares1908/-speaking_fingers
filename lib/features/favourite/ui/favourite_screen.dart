import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../logic/favourite_controller.dart';
import 'widgets/custom_app_bar.dart';
import 'widgets/fav_video_card.dart';

class FavoriteScreen extends StatelessWidget {
  final FavoriteController favoriteController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(200.0), // Adjust the height here as needed
        child: CustomAppBar(),
      ),
      body: Obx(() {
        return GridView.builder(
          padding: const EdgeInsets.all(8),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            childAspectRatio: (1 / 1),
          ),
          itemCount: favoriteController.favorites.length, // Number of favorite items
          itemBuilder: (context, index) {
            var video = favoriteController.favorites[index];
            return FavoriteVideoCard(
              videoName: video.title ?? 'No Title',
              isFavorited: true,
            );
          },
        );
      }),
    );
  }
}
