import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:speaking_fingers/core/class/videoResponse.dart';
import 'package:speaking_fingers/features/favourite/ui/widgets/videoItem.dart';

class VideoContainer extends StatelessWidget {
  List<Video> videoList;

  // double? hiegh = 0;
  final bool isFavorited;

  VideoContainer({
    required this.videoList,
    required this.isFavorited,
  });

  @override
  Widget build(BuildContext context) {
    return
        // ListView.builder(itemBuilder: (context, index) {
        //   videoList.map((video) => VideoItem(video: video, isFavorited: true)).toList();
        // },itemCount: videoList.length,);
        GridView.builder(
            padding: const EdgeInsets.all(8),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              childAspectRatio: (1 / 1),
            ),
            itemCount: videoList.length, // Number of items in your grid
            itemBuilder: (context, index) {
              videoList
                  .map((video) => VideoItem(video: video, isFavorited: true))
                  .toList();
            });
  }
}
