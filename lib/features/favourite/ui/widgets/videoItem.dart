import 'package:flutter/material.dart';
import 'package:speaking_fingers/features/favourite/logic/videoResponse.dart';

class VideoItem extends StatelessWidget {
  Videos video;
  final bool isFavorited;

  VideoItem({
    required this.video,
    required this.isFavorited,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(right: 12, left: 12),
              width: double.infinity,
              height: 140,
              child: Image.network(
                video.thumbnail ?? '',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              margin: EdgeInsets.only(top: 10, bottom: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    video.title ?? '',
                    style: const TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                  Icon(
                    isFavorited
                        ? Icons.favorite_outlined
                        : Icons.favorite_outline,
                    color: isFavorited ? Colors.red : Colors.grey,
                  ),
                ],
              ),
            ),
          ]),
    );
  }
}
