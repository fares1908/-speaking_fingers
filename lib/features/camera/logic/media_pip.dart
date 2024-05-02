import 'package:get/get.dart';
import 'package:camera/camera.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:typed_data';

class CameraControllerX extends GetxController {
  CameraController? cameraController;
  var isCameraInitialized = false.obs;
  var responseText = ''.obs;

  @override
  void onInit() {
    super.onInit();
    initializeCamera();
  }

  Future<void> initializeCamera() async {
    final cameras = await availableCameras();
    if (cameras.isNotEmpty) {
      cameraController = CameraController(cameras[0], ResolutionPreset.medium);
      await cameraController!.initialize();
      isCameraInitialized(true);
    }
  }

  void closeCamera() {
    cameraController?.dispose();
    isCameraInitialized(false);
    update();  // Trigger UI update
  }

  Future<void> captureAndSend() async {
    if (cameraController != null && cameraController!.value.isInitialized) {
      final image = await cameraController!.takePicture();
      Uint8List imageData = await image.readAsBytes();
      String base64Image = base64Encode(imageData);
      await sendDataToServer(base64Image);
    }
  }

  Future<void> sendDataToServer(String base64Image) async {
    try {
      var response = await http.post(
        Uri.parse('https://c0a7-41-232-32-20.ngrok-free.app/api/v1/Mediapipe/hand-tracking/'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({'image': base64Image}),
      );
      responseText(response.body);
      print(response.body);
      update();  // Update to show response text
    } catch (e) {
      responseText('Error sending image: $e');
      update();  // Update to show error
    }
  }

  @override
  void onClose() {
    cameraController?.dispose();
    super.onClose();
  }
}
