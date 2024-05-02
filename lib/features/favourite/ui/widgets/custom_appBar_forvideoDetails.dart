import 'package:flutter/material.dart';
import 'package:speaking_fingers/core/theming/text_styles.dart';
import 'package:speaking_fingers/features/favourite/logic/videoResponse.dart';

class CustomAppBarVideoDetails extends StatefulWidget {
  Videos? video;

  // CustomAppBarVideoDetails(
  // {required this.video}
  //     );

  @override
  State<CustomAppBarVideoDetails> createState() =>
      _CustomAppBarVideoDetailsState();
}

class _CustomAppBarVideoDetailsState extends State<CustomAppBarVideoDetails> {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: AppBarClipper(),
      child: Container(
        height: 180,
        color: Colors.lightBlue.shade300,
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 30),
                    child: Row(
                      children: [
                        Text(
                          widget.video?.title ?? 'Video Details',
                          style: TextStyles.font20WhiteSemiBold
                              .copyWith(color: Colors.black, fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AppBarClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 100);
    path.quadraticBezierTo(
      size.width / 2,
      size.height,
      size.width,
      size.height - 30,
    );
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
