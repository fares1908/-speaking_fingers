import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:speaking_fingers/features/auth/sign_up/logic/sign_up_data.dart';

import '../../../../core/class/status_request.dart';
import '../../../../core/helpers/functions/handling_data.dart';
import '../../../../core/routes/AppRoute/routersName.dart';



abstract class SignUpController extends GetxController {
  goToLogin();
  goToRegister();
}

class SignUpControllerImpl extends SignUpController {
  late TextEditingController email;
  late TextEditingController password;
  late TextEditingController name;
  StatusRequest statusRequest = StatusRequest.none;
 SignUpData signUpData =SignUpData(Get.find());
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  IconData showPasswordIcon = Icons.visibility_off_outlined;
  bool isShowPassword = false;

  changeIsShowPassword() {
    isShowPassword = isShowPassword == true ? false : true;
    update();
  }

  showPassword() {
    showPasswordIcon = isShowPassword == true
        ? Icons.visibility_off_outlined
        : Icons.visibility_outlined;
    update();
  }

  @override
  goToRegister() async {
    if (formState.currentState!.validate()) {
      try {
        statusRequest = StatusRequest.loading;
        update();

        var response = await signUpData.registerData(email.text, password.text, name.text);
        print("=============================== Controller $response");

        if (response['user'] != null) {
          String userId = response['user']['id'].toString();
          print(userId); // This should now correctly print the user's id
          Get.offNamed(AppRouter.verifyCodeSignUp, arguments: {"email": email.text, "id": userId});
          print(userId); // Confirms the userId is passed correctly
        } else {
          String errorMessage = response['message'] ?? 'Check email and password email may be token and password may be had least 1 number and 1 uppercase letter';
          showErrorDialog(errorMessage);
          statusRequest = StatusRequest.failure;
        }

      } catch (e) {
        showErrorDialog('Check email and password email may be token and password may be had least 1 number and 1 uppercase letter and at least  least 8 characters');
        print(e);
      } finally {
        statusRequest = StatusRequest.none;
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
  goToLogin() {
    Get.offNamed(AppRouter.login);
  }


  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    name = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    name.dispose();

    super.dispose();
  }
}