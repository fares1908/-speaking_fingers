
import 'package:flutter/material.dart';
import 'package:speaking_fingers/features/favourite/ui/widgets/fav_video_card.dart';

import 'widgets/custom_app_bar.dart';

class FavoriteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(200.0), // Adjust the height here as needed
        child: CustomAppBar(),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(8),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          childAspectRatio: (1 / 1),
        ),
        itemCount: 8, // Number of items in your grid
        itemBuilder: (context, index) {
          return FavoriteVideoCard(
            videoName: 'Video name $index', // Replace with actual data
            isFavorited: true, // Replace with actual data
          );
        },
      ),
    );
  }
}




