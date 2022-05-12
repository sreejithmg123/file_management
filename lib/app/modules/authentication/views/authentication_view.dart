import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../utils/validators.dart';
import '../../../../utils/widgets.dart';
import '../controllers/authentication_controller.dart';

class AuthenticationView extends GetView<AuthenticationController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
          child: Obx(
            () => controller.isLoading.value
                ? Center(
                    child: CircularProgressIndicator(
                      color: Colors.white,
                    ),
                  )
                : Form(
                    key: controller.formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: CustomText(
                            text: 'Enter your Email ID to Sign in',
                          ),
                        ),
                        Container(
                            margin: const EdgeInsets.only(
                                left: 32, right: 32, top: 20),
                            child: CustomTextFormField(
                              validator: Validators.emailValidator,
                              controller: controller.emailController,
                              label: CustomText(
                                text: 'Email',
                              ),
                              hintText: 'Enter',
                            )),
                        Container(
                            margin: const EdgeInsets.only(
                                left: 32, right: 32, top: 10),
                            child: CustomTextFormField(
                              obSecureText: true,
                              validator: Validators.passwordValidator,
                              controller: controller.passwordController,
                              label: CustomText(
                                text: 'Password',
                              ),
                              hintText: 'Enter',
                            )),
                        const SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: Obx(
                            () => CustomText(
                              text: controller.errorText.value,
                            ),
                          ),
                        ),
                        Center(
                          child: CustomContainer(
                              onTap: () {
                                controller.signUp();
                              },
                              color: Colors.red,
                              height: 50,
                              width: 235,
                              alignment: Alignment.center,
                              margin: const EdgeInsets.only(top: 80),
                              child: CustomText(
                                text: 'Sign Up',
                              )),
                        ),
                      ],
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}
