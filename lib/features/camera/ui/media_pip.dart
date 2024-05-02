import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../logic/media_pip.dart';
// Correct import based on your project structure

class MediaPip extends StatelessWidget {
  const MediaPip({super.key});

  @override
  Widget build(BuildContext context) {
    final CameraControllerX controller = Get.put(CameraControllerX());

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
                        child: CameraPreview(controller.cameraController!),
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
                    controller.captureAndSend();
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
