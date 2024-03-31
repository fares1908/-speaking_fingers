import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:speaking_fingers/features/camera/logic/camera_controller.dart';

class ScanScreen extends StatelessWidget {
  const ScanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ScanController());
    return GetBuilder<ScanController>(
        builder: (controller) {
          return controller.isCameraInitialized.value?Stack(
            children: [
              CameraPreview(controller.cameraController),
              Positioned(
                // Use the variables safely by ensuring they are multiplied only if not null.
                // Since you've initialized them with 0.0, direct multiplication should be safe,
                // but let's be defensive in practice.
                top: (controller.y ?? 0.0) * 700,
                right: (controller.x ?? 0) * 500,
                child: Container(
                  width: ((controller.w ?? 0.0) * 100) * MediaQuery.of(context).size.width / 100,
                  height: ((controller.h ?? 0.0) * 100) * MediaQuery.of(context).size.height / 100,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: Colors.green,
                      width: 4
                    )
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        color: Colors.white,
                      child: Text('Label of object: ${controller.label ?? "Detecting..."}'),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ):Center(child: CircularProgressIndicator());
        },
    );
  }
}
