import 'package:speaking_fingers/core/class/apiManger.dart';
import 'package:speaking_fingers/core/class/videoRespons.dart';
import 'package:flutter/material.dart';
import 'package:speaking_fingers/features/favourite/ui/widgets/videoCard.dart';
import 'package:speaking_fingers/features/favourite/ui/widgets/videoItem.dart';

class VideoDetails extends StatefulWidget {
  List<Video> videoList = [];

  // VideoDetails videoDetails;
  VideoDetails({required this.videoList});

  @override
  State<VideoDetails> createState() => _VideoDetailsState();
}

class _VideoDetailsState extends State<VideoDetails> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return
      FutureBuilder<VideoRespons>(
        future: apiManger
            .getVideos(widget.videoList[selectedIndex].id.toString() ?? ''),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return Text('something was wrong');
          }
          if (snapshot.data?.status != "success") {
            return Text(snapshot.data?.message ?? '');
          }
          var videoList = snapshot.data?.data?.videos ?? [];
          // var videoName = snapshot.data?.data?.videos ?? [];

          return Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) =>
               Text ( videoList[index].title??''),
                itemCount: videoList.length,
              ));
        })
    ;
  }
}
