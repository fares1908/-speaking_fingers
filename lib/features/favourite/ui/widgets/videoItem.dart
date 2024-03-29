import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:speaking_fingers/core/class/videoRespons.dart';
import 'package:speaking_fingers/features/favourite/ui/widgets/videoCard.dart';

class VideoItem extends StatelessWidget {

  Function onVideoItemclicked;
  // const VideoItem({super.key});
   final String? videoName;
  final bool isFavorited;
  VideoItem({
      required this.onVideoItemclicked,
    // Key? key,
     this.videoName,
    this.isFavorited = false,
  }) ;
       // : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) {
        return Divider(height: 8,);
      },

      itemBuilder: (context, index) {
        index==0;
       double newhiegh=0;

        index ==0? newhiegh=300
        :
            newhiegh =200;
        return SingleChildScrollView(
          child:Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
              Container(
              width: double.infinity,
                height: newhiegh,
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
            ),
        ),
        );
      },
      itemCount: 4,
    );
  }
}
