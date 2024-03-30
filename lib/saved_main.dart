// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get_navigation/src/root/get_material_app.dart';
// import 'core/class/initial_binding.dart';
// import 'core/class/my_services.dart';
// import 'core/routes/AppRoute/routes.dart';
//
// void main() async{
//   WidgetsFlutterBinding.ensureInitialized();
//   try {
//     await initialServices();
//     runApp(const MyApp());
//   } catch (e) {
//     // Handle initialization error
//     print('Initialization error: $e');
//   }
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return ScreenUtilInit(
//       designSize: const Size(375, 812),
//       minTextAdapt: true,
//       builder: (BuildContext c, child) => GetMaterialApp(
//         title: 'Speakers fingers',
//         initialBinding: initialBinding(),
//         getPages: routes,
//         theme: ThemeData(
//           useMaterial3: false, scaffoldBackgroundColor: Colors.white,
//           fontFamily:'Mulish',
//         ),
//         debugShowCheckedModeBanner: false,
//       ),
//     );
//   }
// }
//
// import 'dart:math' as math;
// import 'dart:typed_data';
// import 'package:camera/camera.dart';
// import 'package:flutter/material.dart';
// import 'package:tflite_flutter/tflite_flutter.dart';
// // Ensure you've added the image package to your pubspec.yaml
// import 'package:image/image.dart' as imglib;
//
// List<CameraDescription>? cameras;
//
// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   // Obtain a list of the available cameras on the device.
//   cameras = await availableCameras();
//   final frontCamera = cameras!.firstWhere(
//         (camera) => camera.lensDirection == CameraLensDirection.front,
//     orElse: () => cameras!.first,
//   );
//   runApp(MyApp(camera: frontCamera));
// }
//
// class MyApp extends StatelessWidget {
//   final CameraDescription camera;
//
//   const MyApp({super.key, required this.camera});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MyHomePage(camera: camera),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   final CameraDescription camera;
//
//   const MyHomePage({super.key, required this.camera});
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   late CameraController _controller;
//   late Future<void> _initializeControllerFuture;
//   Interpreter? _interpreter;
//   String _recognizedLetter = ''; // Variable to hold the recognized letter
//
//   @override
//   void initState() {
//     super.initState();
//     _initializeCamera();
//     _loadModel();
//   }
//
//   void _initializeCamera() async {
//     _controller = CameraController(
//       widget.camera,
//       ResolutionPreset.medium,
//     );
//     _initializeControllerFuture = _controller.initialize();
//     await _initializeControllerFuture;
//     _controller.startImageStream((CameraImage image) async {
//       final letter = await runInference(image);
//       setState(() {
//         _recognizedLetter = letter;
//       });
//     });
//   }
//
//   Future<String> runInference(CameraImage image) async {
//     // Placeholder for your inference code. You'll need to convert 'image' and run your model here.
//     // This example does not directly implement these steps due to their complexity and dependency on your specific model.
//     return "A"; // Placeholder for recognized letter
//   }
//
//   Future<void> _loadModel() async {
//     try {
//       _interpreter = await Interpreter.fromAsset('assets/images/tflite.tflite');
//       print('Model loaded successfully');
//     } catch (e) {
//       print('Failed to load the model: $e');
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Sign Language Recognition'),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: FutureBuilder<void>(
//               future: _initializeControllerFuture,
//               builder: (context, snapshot) {
//                 if (snapshot.connectionState == ConnectionState.done) {
//                   return CameraPreview(_controller);
//                 } else {
//                   return const Center(child: CircularProgressIndicator());
//                 }
//               },
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Text(
//               'Recognized Letter: $_recognizedLetter',
//               style: const TextStyle(fontSize: 24),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   @override
//   void dispose() {
//     _controller.dispose();
//     _interpreter?.close();
//     super.dispose();
//   }
// }