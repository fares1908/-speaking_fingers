import 'package:flutter/material.dart';

import '../../../../core/theming/text_styles.dart';
class CustomAppBarHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: AppBarClipper(),
      child: Container(
        height: 180,
        color: Colors.lightBlue.shade300,
        child:  SafeArea(
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(

                    children: [

                      Text(
                        'Introductory Videos',
                        style: TextStyles.font20WhiteSemiBold.copyWith(color: Colors.black,fontSize: 16),
                      ),
                    ],
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
    path.lineTo(0, size.height - 120);
    path.quadraticBezierTo(
      size.width / 2,
      size.height,
      size.width,
      size.height - 40,
    );
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}