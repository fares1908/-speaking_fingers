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
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Container(
          width: double.infinity,
          height: 150,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
          ),
          child: Image.network(video.thumbnail ?? ''),
        ),
        Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                video.title ?? '',
                style: const TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(
                isFavorited ? Icons.favorite_outlined : Icons.favorite_outline,
                color: isFavorited ? Colors.red : Colors.grey,
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
