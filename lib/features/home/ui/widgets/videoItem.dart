import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../favourite/logic/favourite_controller.dart';
import '../../../favourite/logic/videoResponse.dart';

class VideoItem extends StatelessWidget {
  final Videos video;

  VideoItem({required this.video});

  final FavoriteController favoriteController = Get.find();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(right: 12, left: 12),
            width: double.infinity,
            height: 140,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(10),
              ),
            ),
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(25.0), // Circular border radius
                  child: CachedNetworkImage(
                    imageUrl: video.thumbnail!,
                    progressIndicatorBuilder: (context, url, downloadProgress) => Container(
                      width: 50, // Adjust the size as needed
                      height: 50,
                      child: Center(
                        child: CircularProgressIndicator(
                          value: downloadProgress.progress,
                        ),
                      ),
                    ),
                    errorWidget: (context, url, error) => Icon(Icons.error),
                    fit: BoxFit.cover, // Adjust fit as needed
                    width: double.infinity,
                    height: double.infinity,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: GestureDetector(
                    onTap: () {
                      if (favoriteController.isFavorite(video)) {
                        favoriteController.removeFavorite(video);
                      } else {
                        favoriteController.addFavorite(video);
                      }
                    },
                    child: Container(
                      color: Colors.black.withOpacity(0.5), // Optional: Add a background color with opacity
                      padding: const EdgeInsets.all(12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            video.title ?? '',
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Obx(() => Icon(
                            favoriteController.isFavorite(video) ? Icons.favorite_outlined : Icons.favorite_outline,
                            color: favoriteController.isFavorite(video) ? Colors.red : Colors.grey,
                          )),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
