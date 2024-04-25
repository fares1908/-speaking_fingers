import 'package:flutter/material.dart';
import 'package:speaking_fingers/features/favourite/logic/apiManger.dart';
import 'package:speaking_fingers/features/favourite/logic/videoResponse.dart';
import 'package:speaking_fingers/features/favourite/ui/widgets/videoContainer.dart';

class VideoDetails extends StatelessWidget {
  List<Video>? videoList;

  // VideoDetails({required this.videoList});

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<VideoResponse>(
      future: apiManger.getVideos(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }
        if (snapshot.hasError) {
          print('error');
          return const Text('Something went wrong');
        }
        if (snapshot.data?.status != "success") {
          return Text(snapshot.data?.message ?? '');
        }

        List<Video>? videoList = snapshot.data?.data?.videos;

        if (videoList != null) {
          return VideoContainer(videoList: videoList, isFavorited: true);
        } else {
          return const Text('No videos found');
        }
      },
    );
  }
}
