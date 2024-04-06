import 'dart:io';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;
import 'package:speaking_fingers/core/class/my_services.dart';
import 'package:speaking_fingers/core/theming/colors.dart';

class ImagePickScreen extends StatefulWidget {
  @override
  _ImagePickScreenState createState() => _ImagePickScreenState();
}

class _ImagePickScreenState extends State<ImagePickScreen> {
  File? _image;
  String? _responseLetter;
MyServices myServices=Get.find();
  Future pickImage() async {
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
      await uploadImage(_image!);
    }
  }

  Future uploadImage(File imageFile) async {
    setState(() {
      // Indicate that processing has started, could set to a specific message or null
      _responseLetter = "Processing...";
    });

    try {
      var uri = Uri.parse('https://youssifallam.pythonanywhere.com/api/CNN-api/predict_class');
      var request = http.MultipartRequest('POST', uri)
        ..files.add(await http.MultipartFile.fromPath('picture', imageFile.path));

      // Ensure you have a valid token before attempting to add it to the request
      final String? bearerToken = myServices.sharedPreferences.getString('token');
      if (bearerToken == null) {
        setState(() {
          _responseLetter = "No authentication token found.";
        });
        return;
      }

      request.headers.addAll({
        "Authorization": "Bearer $bearerToken",
      });

      var response = await request.send();

      if (response.statusCode == 200) {
        final responseString = await response.stream.bytesToString();
        final jsonResponse = json.decode(responseString);

        setState(() {
          _responseLetter = jsonResponse['data']['arabic_letter'] ?? "Letter not detected.";
        });
      } else {
        // Consider setting _responseLetter to a generic error message or something more specific based on statusCode
        print('Failed to upload image. Status code: ${response.statusCode}');
        setState(() {
          _responseLetter = "Failed to process image.";
        });
      }
    } catch (e) {
      print('Exception caught: $e');
      setState(() {
        _responseLetter = "An error occurred during processing.";
      });
    }
  }



  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          ElevatedButton(
            onPressed: pickImage,
            child: const Text('Pick Image From Gallery'),
          ),
          const SizedBox(height: 20),
          // Check if an image has been picked
          _image != null
              ? Container(
            width: 200, // Specify the width of the image
            height: 200, // Specify the height of the image
            child: ClipRRect( // Use ClipRRect for rounded corners (optional)
              borderRadius: BorderRadius.circular(8), // Rounded corners
              child: Image.file(
                _image!,
                fit: BoxFit.cover, // This scales the image to fit the container while maintaining the aspect ratio
              ),
            ),
          )
              : const Text('No image selected.'),
          const SizedBox(height: 20),
          _responseLetter != null ? Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8), // Rounded corners
              color: AppColors.themeColor,
            ),

              height: 50,
              width: 200,
              child: Center(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: DefaultTextStyle.of(context).style, // Default text style
                    children: <TextSpan>[
                      const TextSpan(text: 'Detected Letter : ', style: TextStyle(color: Colors.black)),
                      TextSpan(text: _responseLetter, style: const TextStyle(color: Colors.white,
                      fontSize: 12
                      )), // Customize color as needed
                    ],
                  ),
                )

              ),
          ) : Container(),
        ],
      ),
    );
  }

}
