// LoginControllerImpl.dart
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/class/my_services.dart';
import '../../../../core/class/status_request.dart';
import '../../../../core/helpers/functions/handling_data.dart';
import '../../../../core/routes/AppRoute/routersName.dart';
import '../data/login_data.dart';

abstract class LoginController extends GetxController {
  login();

}

class LoginControllerImpl extends LoginController {
  late TextEditingController email;
  StatusRequest statusRequest = StatusRequest.none;
  LoginData loginData = LoginData(Get.find());
  late TextEditingController password;

  MyServices services = Get.find();
  IconData showPasswordIcon = Icons.visibility_off_outlined;
  GlobalKey<FormState> formState = GlobalKey<FormState>();





  @override
  login() async {
    var formdata = formState.currentState;
    if (formdata!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      try {
        var response = await loginData.loginData(email.text, password.text);
        print("=============================== Controller $response ");
        if (response != null) {
          // Assuming 'response' is already a Map<String, dynamic> and does not need decoding
          Map<String, dynamic> jsonResponse = response;

          // Proceed as before
          if (jsonResponse.containsKey('user') && jsonResponse['user'] != null) {
            var user = jsonResponse['user'];
            var tokens = jsonResponse['tokens'];

            if (user is Map<String, dynamic> && user.containsKey('email') &&
                tokens is Map<String, dynamic> && tokens.containsKey('access') && tokens.containsKey('refresh')) {
              services.sharedPreferences.setString('email', user['email']);
              services.sharedPreferences.setString('token', tokens['access']);
              services.sharedPreferences.setString('step', "2");
              print("=============================== $statusRequest");
              Get.offNamed(AppRouter.home);
            } else {
              Get.defaultDialog(title: "Warning", middleText: "Invalid response format");
              statusRequest = StatusRequest.failure;
            }
          } else {
            Get.defaultDialog(title: "Warning", middleText: "User data is missing in the response");
            statusRequest = StatusRequest.failure;
          }
        } else {
          Get.defaultDialog(title: "Warning", middleText: "No response received from server");
          statusRequest = StatusRequest.failure;
        }
      } catch (e) {
        showErrorDialog(e.toString());
        print(e);
        statusRequest = StatusRequest.failure;
      } finally {
        update();
      }
    }
  }




  void showErrorDialog(String message) {
    Get.defaultDialog(
      title: "Warning",
      middleText: message,
    );
  }
  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }
}
