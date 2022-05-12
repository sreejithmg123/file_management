import 'dart:async';

import 'package:get/get.dart';

import '../../authentication/bindings/authentication_binding.dart';
import '../../authentication/views/authentication_view.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    isUserLoggedIn();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  isUserLoggedIn() async {
    await Timer(Duration(seconds: 3), () {
      Get.to(AuthenticationView(), binding: AuthenticationBinding());
    });
  }
}
