import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:speaking_fingers/core/class/apiManger.dart';
import 'package:speaking_fingers/core/class/videoRespons.dart';
import 'package:speaking_fingers/features/favourite/ui/widgets/custom_appBar_forHome.dart';
import 'package:speaking_fingers/features/favourite/ui/widgets/custom_app_bar.dart';
import 'package:speaking_fingers/features/favourite/ui/widgets/fav_video_card.dart';
import 'package:speaking_fingers/features/favourite/ui/widgets/videoCard.dart';
import 'package:speaking_fingers/features/favourite/ui/widgets/videoDetails.dart';
import 'package:speaking_fingers/features/favourite/ui/widgets/videoItem.dart';


class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // const HomeScreen({super.key});
List<Video> videoList=[];

Video? videoName;

  @override
  Widget build(BuildContext context) {
    // Get.put(HomePageControllerImpl());
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(200.0), // Adjust the height here as needed
        child:
        // VideoDetails(),
        CustomAppBarHome(),
      ),
      body:
      selectedItemClicked == 2
          ? VideoItem(onVideoItemclicked:onVideoItemclicked,)
          : selectedIndex == null || selectedItemClicked == 1
          ?VideoCard(onvideoCardClicked:onvideoCardClicked ,):
          VideoDetails(videoList: [],),
    );

  }

int selectedItemClicked = 2;

void onVideoItemclicked(int newSelectedItemClicked) {
  selectedItemClicked = newSelectedItemClicked;
  setState(() {});
}

VideoCard? selectedIndex = null;

void onvideoCardClicked(VideoCard videoCard) {
  selectedIndex = videoCard;
  setState(() {});
}

}