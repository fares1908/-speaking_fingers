import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../logic/media_pip.dart';
// Correct import based on your project structure

class MediaPip extends StatelessWidget {
  const MediaPip({super.key});

  List<Widget> displayBoxesAroundRecognizedObjects(Size screen , CameraControllerX controller) {
    if (controller.yoloResults.isEmpty) return [];
    double factorX = screen.width / (controller.cameraImage?.height ?? 1);
    double factorY = screen.height / (controller.cameraImage?.width ?? 1);

    Color colorPick = const Color.fromARGB(255, 50, 233, 30);

    return controller.yoloResults.map((result) {
      return Positioned(
        left: result["box"][0] * factorX,
        top: result["box"][1] * factorY,
        width: (result["box"][2] - result["box"][0]) * factorX,
        height: (result["box"][3] - result["box"][1]) * factorY,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10.0)),
            border: Border.all(color: Colors.pink, width: 2.0),
          ),
          child: Text(
            "${result['tag']} ${(result['box'][4] * 100).toStringAsFixed(0)}%",
            style: TextStyle(
              background: Paint()..color = colorPick,
              color: Colors.white,
              fontSize: 18.0,
            ),
          ),
        ),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    final CameraControllerX controller = Get.put(CameraControllerX());
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(() {
                if (controller.isCameraInitialized.isTrue) {
                  // Camera is open, show camera preview and close icon
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Stack(
      fit: StackFit.expand,
      children: [
        AspectRatio(
          aspectRatio: controller.cameraController!.value.aspectRatio,
          child: CameraPreview(
            controller.cameraController!,
          ),
        ),
        ...displayBoxesAroundRecognizedObjects(size,controller),
        Positioned(
          bottom: 75,
          width: MediaQuery.of(context).size.width,
          child: Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                  width: 5, color: Colors.white, style: BorderStyle.solid),
            ),
            child: controller.isDetecting
                ? IconButton(
                    onPressed: () async {
                      controller.stopDetection();
                    },
                    icon: const Icon(
                      Icons.stop,
                      color: Colors.red,
                    ),
                    iconSize: 50,
                  )
                : IconButton(
                    onPressed: () async {
                      await controller.startDetection();
                    },
                    icon: const Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                    ),
                    iconSize: 50,
                  ),
          ),
        ),
      ],
    ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.close),
                        onPressed: () {
                          controller.closeCamera();
                        },
                      ),
                    ],
                  );
                } else {
                  // Camera is closed, show response text
                  return Column(
                    children: [
                      const Text('Camera closed'),
                      const SizedBox(height: 20),
                      Text('Response: ${controller.responseText}', style: Theme.of(context).textTheme.headlineSmall),
                    ],
                  );
                }
              }),
              const SizedBox(height: 20),
              IconButton(
                icon: const Icon(Icons.videocam),
                onPressed: () {
                  if (!controller.isCameraInitialized.value) {
                    controller.initializeCamera();  // Re-initialize camera if closed
                  } else {
                   // controller.captureAndSend();
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
  
}