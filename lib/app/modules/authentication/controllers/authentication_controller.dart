import 'package:file_management/app/modules/home/bindings/home_binding.dart';
import 'package:file_management/app/modules/home/views/home_view.dart';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AuthenticationController extends GetxController {
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  GlobalKey<FormState>? formKey = GlobalKey<FormState>();
  RxBool isLoading = false.obs;
  RxString errorText = ''.obs;
  static RxString userName = ''.obs;
  static RxString password = ''.obs;

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
  Future<void> signUp() async {
    userName.value = emailController.text;
    password.value = passwordController.text;
    Get.to(HomeView(), binding: HomeBinding());
  }
}
