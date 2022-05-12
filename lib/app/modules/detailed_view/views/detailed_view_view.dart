import 'package:file_management/app/modules/home/bindings/home_binding.dart';
import 'package:file_management/app/modules/home/views/home_view.dart';
import 'package:file_management/utils/widgets.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/detailed_view_controller.dart';

class DetailedViewView extends GetView<DetailedViewController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 600,
            child: ListView.builder(
              itemCount: controller.images.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.all(40),
                  alignment: Alignment.topLeft,
                  child: Image.network(
                    controller.images[index],
                    height: 50,
                  ),
                );
              },
            ),
          ),
          Center(
            child: CustomContainer(
                onTap: () {
                  Get.to(HomeView(), binding: HomeBinding());
                },
                color: Colors.red,
                height: 50,
                width: 235,
                alignment: Alignment.center,
                margin: const EdgeInsets.only(top: 80),
                child: CustomText(
                  text: 'Back',
                )),
          ),
        ],
      ),
    );
  }
}
