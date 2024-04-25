import 'package:flutter/material.dart';
import 'package:speaking_fingers/core/class/videoResponse.dart';
import 'package:speaking_fingers/features/favourite/ui/widgets/videoItem.dart';

class VideoContainer extends StatelessWidget {
  final List<Video> videoList;
  final bool isFavorited;

  VideoContainer({
    required this.videoList,
    required this.isFavorited,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(8),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 2,
        mainAxisSpacing: 2,

      ),
      itemCount: videoList.length,
      itemBuilder: (context, index) {
        final video = videoList[index];
        return VideoItem(video: video, isFavorited: isFavorited);
      },
    );
  }
}
