import 'package:flutter/material.dart';
import 'package:speaking_fingers/core/class/videoResponse.dart';

class VideoItem extends StatelessWidget {
  // Function onVideoItemclicked;
  Video video;
  final bool isFavorited;

  VideoItem({
    required this.video,
    required this.isFavorited,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.5,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(10)),
            //  color: Colors.grey.shade300,
          ),
          child: Image.network(video.thumbnail ?? ''),
        ),
        Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                video.title ?? '',
                style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                ),
              ),
              // Text(
              //   video.videoFile??'',
              //   style:  TextStyle(
              //     color: Colors.black54,
              //     fontWeight: FontWeight.bold,
              //   ),
              // ),
              // Text(
              //   video.description??'',
              //   style:  TextStyle(
              //     color: Colors.black54,
              //     fontWeight: FontWeight.bold,
              //   ),
              // ),

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
