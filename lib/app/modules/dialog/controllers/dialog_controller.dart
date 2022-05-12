import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class DialogController extends GetxController {
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  validateUserNameAndPassword() {
    if (userNameController.text == '123456' &&
        passwordController.text == '123456') {
      print('valid uswr name and password');
    }
  }
}
