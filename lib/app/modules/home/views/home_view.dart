import 'package:file_management/app/modules/add_folder/bindings/add_folder_binding.dart';
import 'package:file_management/app/modules/add_folder/views/add_folder_view.dart';

import 'package:file_management/utils/widgets.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    controller;
    return Scaffold(
        body: SafeArea(
      child: Obx(
        () => controller.isLoading.value
            ? Center(
                child: CircularProgressIndicator(
                  color: Colors.red,
                ),
              )
            : SingleChildScrollView(
                child: Column(
                  children: [
                    controller.foldersList.isEmpty
                        ? Padding(
                            padding: EdgeInsets.only(top: 100),
                            child: Container(
                              child: Text(
                                'Empty',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                          )
                        : Container(
                            margin:
                                EdgeInsets.only(top: 50, left: 20, right: 20),
                            height: 600,
                            child: ListView.builder(
                              itemCount: controller.foldersList.length,
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap: () {
                                    Get.to(AddFolderView(),
                                        binding: AddFolderBinding());
                                  },
                                  child: Container(
                                    height: 60,
                                    margin: EdgeInsets.only(top: 10),
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.red)),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.folder,
                                          color: Colors.white,
                                          size: 30,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 50),
                                          child: CustomText(
                                            text: controller
                                                .foldersList[index].folderName,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                          )
                  ],
                ),
              ),
      ),
    ));
  }
}
