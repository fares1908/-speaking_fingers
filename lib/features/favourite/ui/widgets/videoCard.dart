import 'package:flutter/material.dart';

class VideoCard extends StatelessWidget {
  Function onvideoCardClicked;
  final bool isFavorited;

  VideoCard({
    required this.isFavorited,
    required this.onvideoCardClicked,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Expanded(
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(10)),
              color: Colors.grey.shade300,
            ),
            child: const Center(
              child: Icon(
                Icons.play_circle_fill,
                color: Colors.white,
                size: 50,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                // videoName?.title ?? ''
                'video',
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