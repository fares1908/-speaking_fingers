import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:speaking_fingers/core/class/videoRespons.dart';
import 'package:speaking_fingers/core/class/apiManger.dart';

class VideoCard extends StatelessWidget {
  Function onvideoCardClicked;
    final String? videoName;
  final bool isFavorited;
  List<Video>videosList = [];
  VideoCard(
      {required this.onvideoCardClicked,
        Key? key,
         this.videoName,
      this.isFavorited = false,
      }
      )
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(8),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        childAspectRatio: (1 / 1),
      ),
      itemCount: videosList.length, // Number of items in your grid
      itemBuilder: (context, index) {

        return Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
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
                        isFavorited
                            ? Icons.favorite_outlined
                            : Icons.favorite_outline,
                        color: isFavorited ? Colors.red : Colors.grey,
                      ),
                    ],
                  ),
                ),
              ] ),
        );


        // VideoCard(
        //   // videoName:'videoName $index' ,
        //   videosList: videoList, // Replace with actual data
        //   isFavorited: false, // Replace with actual data
        // );
      },
    );
  }
}
