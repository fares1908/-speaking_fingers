import 'package:flutter/material.dart';
import 'package:speaking_fingers/core/class/videoResponse.dart';
import 'package:speaking_fingers/features/favourite/ui/widgets/custom_appBar_forHome.dart';
import 'package:speaking_fingers/features/favourite/ui/widgets/videoDetails.dart';


class HomeScreen extends StatelessWidget {
  // const HomeScreen({super.key});
  List<Video> videoList = [];
  Video? videoName;

  @override
  Widget build(BuildContext context) {
    // Get.put(HomePageControllerImpl());
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(200.0),
        // Adjust the height here as needed
        child:
            // VideoDetails();
            CustomAppBarHome(),
      ),
      body:
          //
          Container(
              //color: Colors.orange,
              child: VideoDetails()),

      // VideoCard(
      //  videoName:'videoName $index' ,
      // videosList: videoList, // Replace with actual data
      // isFavorited: false, // Replace with actual data
      // );
    );
  }
}
