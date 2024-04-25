import 'package:flutter/material.dart';
import 'package:speaking_fingers/features/favourite/logic/apiManger.dart';
import 'package:speaking_fingers/features/favourite/logic/videoResponse.dart';
import 'package:speaking_fingers/features/favourite/ui/widgets/videoContainer.dart';

import '../../favourite/ui/widgets/custom_appBar_forHome.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(200.0),
        child: CustomAppBarHome(),
      ),
      body: VideoDetails(),
    );
  }
}

class VideoDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<VideoResponse>(
      future:  apiManger.getVideos(), // Assuming ApiManager is correctly implemented
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        }
        if (snapshot.hasError) {
          print('Error: ${snapshot.error}');
          return Text('Something went wrong');
        }
        if (snapshot.data?.status != "success") {
          return Text(snapshot.data?.message ?? '');
        }

        List<Video>? videoList = snapshot.data?.data?.videos;

        if (videoList != null && videoList.isNotEmpty) {
          return VideoContainer(videoList: videoList, isFavorited: true);
        } else {
          return Text('No videos found');
        }
      },
    );
  }
}
