import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../utils/validators.dart';
import '../../../../utils/widgets.dart';
import '../controllers/add_folder_controller.dart';

class AddFolderView extends GetView<AddFolderController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: controller.formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                margin: const EdgeInsets.only(left: 32, right: 32, top: 10),
                child: CustomTextFormField(
                  validator: Validators.nameValidator,
                  controller: controller.userNameController,
                  label: CustomText(
                    text: 'Username',
                  ),
                )),
            Container(
                margin: const EdgeInsets.only(left: 32, right: 32, top: 10),
                child: CustomTextFormField(
                  obSecureText: true,
                  validator: Validators.nameValidator,
                  controller: controller.passwordController,
                  label: CustomText(
                    text: 'Password',
                  ),
                )),
            Center(
              child: CustomContainer(
                  onTap: () {
                    controller.validateUserNameAndPassword();
                  },
                  color: Colors.red,
                  height: 50,
                  width: 235,
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(top: 80),
                  child: CustomText(
                    text: 'Continue',
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
