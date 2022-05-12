import 'package:file_management/utils/widgets.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/dialog_controller.dart';

class DialogpopupView extends GetView<DialogController> {
  var onSuccess;
  var onCancel;
  DialogpopupView({this.onSuccess, this.onCancel});
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))),
      elevation: 0,
      child: Wrap(children: [
        MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1),
          child: Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                Text(
                  'User name or password \n is invalid',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.red, fontSize: 18),
                ),
                const SizedBox(
                  height: 60,
                ),
                GestureDetector(
                  onTap: () => Get.back(),
                  child: CustomContainer(
                    width: 135,
                    height: 35,
                    child: CustomText(
                      text: 'Ok',
                    ),
                    color: Colors.red,
                  ),
                ),
                const SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
