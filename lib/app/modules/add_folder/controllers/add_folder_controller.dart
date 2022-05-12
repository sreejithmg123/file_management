import 'package:file_management/app/modules/authentication/controllers/authentication_controller.dart';
import 'package:file_management/app/modules/detailed_view/bindings/detailed_view_binding.dart';
import 'package:file_management/app/modules/detailed_view/views/detailed_view_view.dart';
import 'package:file_management/app/modules/dialog/views/dialog_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../models/folder.dart';
import '../../home/bindings/home_binding.dart';
import '../../home/views/home_view.dart';

class AddFolderController extends GetxController {
  TextEditingController passwordController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  TextEditingController folderNameController = TextEditingController();
  GlobalKey<FormState>? formKey = GlobalKey<FormState>();
  List<Folder> folderList = [];

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
  addFolders() {
    if (!formKey!.currentState!.validate()) {
      return;
    } else {
      Folder folder = Folder(
          folderName: folderNameController.text,
          userName: userNameController.text,
          password: passwordController.text);
      folderList.add(folder);
    }
    print(folderList.length);
    Get.to(HomeView(), binding: HomeBinding());
  }

  validateUserNameAndPassword() {
    print(AuthenticationController.userName);
    print(AuthenticationController.password);
    print(userNameController.text);
    print(passwordController.text);
    if (userNameController.text == AuthenticationController.userName.value &&
        passwordController.text == AuthenticationController.password.value) {
      Get.to(DetailedViewView(), binding: DetailedViewBinding());
    } else {
      Get.dialog(DialogpopupView(
        onSuccess: () {
          Get.back();
        },
      ));
    }
  }
}
