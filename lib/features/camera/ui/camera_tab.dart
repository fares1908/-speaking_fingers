import 'package:flutter/material.dart';
import 'package:speaking_fingers/core/theming/colors.dart';
import 'package:speaking_fingers/features/camera/ui/scan_screen.dart';

import 'image_from_gallery.dart';

// Assuming ScanScreen class remains unchanged

class TabBarTopScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Total number of tabs
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,

          title: Text('Top Tab Bar Example'),
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.browse_gallery_outlined,
                color: AppColors.themeColor,

                )

              ),
              Tab(
                icon: Icon(Icons.camera,color: AppColors.themeColor,

                )
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ImagePickScreen(),
            const ScanScreen(), // Your ScanScreen as the second tab
         ],
        ),
      ),
    );
  }
}
