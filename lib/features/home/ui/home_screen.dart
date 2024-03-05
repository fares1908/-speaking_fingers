
import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Get.put(HomePageControllerImpl());
    return Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Colors.white,
        //   elevation: 0,
        //   centerTitle: true,
        //   leading: Padding(
        //     padding: const EdgeInsets.all(8.0),
        //     child: IconButton(
        //       onPressed: () {},
        //       icon: const Icon(
        //         IconlyLight.search,
        //         color: Colors.grey,
        //       ),
        //     ),
        //   ),
        //   title: Padding(
        //     padding: const EdgeInsets.all(8.0),
        //     child: Column(
        //       children: [
        //         Text(
        //           'Make home',
        //           style: TextStyles.font30GrayRegular.copyWith(fontSize: 18.sp),
        //         ),
        //         Text('BEAUTIFUL',
        //             style:
        //                 TextStyles.font24BlackBold.copyWith(fontSize: 21.sp)),
        //       ],
        //     ),
        //   ),
        //   actions: [
        //     badges.Badge(
        //       position: badges.BadgePosition.topEnd(top: 10, end: 10),
        //       child: Padding(
        //         padding: const EdgeInsets.all(8.0),
        //         child: IconButton(
        //           icon: const Icon(
        //             Icons.shopping_cart_outlined,
        //             color: Colors.grey,
        //             size: 30,
        //           ),
        //           onPressed: () {},
        //         ),
        //       ),
        //     ),
        //   ],
        // ),
        // body: GetBuilder<HomePageControllerImpl>(
        //   builder: (controller) => ListView(
        //     children: [
        //       Padding(
        //         padding: const EdgeInsets.all(8.0),
        //         child: SizedBox(
        //           height: 85.h,
        //           child: ListView.separated(
        //             separatorBuilder: (context, index) => horizontalSpace(1),
        //             scrollDirection: Axis.horizontal,
        //             itemBuilder: (context, index) => GestureDetector(
        //               onTap: () {
        //                 print('f');
        //               },
        //               child: Column(
        //                 crossAxisAlignment: CrossAxisAlignment.center,
        //                 children: [
        //                   Container(
        //                     padding: const EdgeInsets.all(10),
        //                     margin: const EdgeInsets.only(left: 15),
        //                     height: 48.h,
        //                     width: 48.w,
        //                     decoration: BoxDecoration(
        //                       color: Colors.grey.withOpacity(.4),
        //                       borderRadius: BorderRadius.circular(12),
        //                     ),
        //                     child: CachedNetworkImage(
        //
        //                       imageUrl:
        //                           '${AppLink.server}/uploads/categories/${controller.categories[index].categoryImage}',
        //                       progressIndicatorBuilder:
        //                           (context, url, downloadProgress) =>
        //                               CircularProgressIndicator(
        //                                   value: downloadProgress.progress),
        //                       errorWidget: (context, url, error) =>
        //                           Icon(Icons.error),
        //                     ),
        //
        //                   ),
        //                   verticalSpace(5),
        //                   Text(
        //                     '${controller.categories[index].categoryName}',
        //                     style: TextStyles.font14GrayRegular,
        //
        //                   ),
        //                 ],
        //               ),
        //             ),
        //             itemCount: controller.categories.length,
        //           ),
        //         ),
        //       )
        //     ],
        //   ),
        // ));
body: Text(
  'fffffff'
),
    );
  }
}
