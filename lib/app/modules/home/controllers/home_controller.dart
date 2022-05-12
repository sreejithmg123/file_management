import 'package:file_management/app/modules/add_folder/controllers/add_folder_controller.dart';
import 'package:file_management/models/folder.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  AddFolderController addFolderController = AddFolderController();
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  List<Folder> foldersList = [];
  RxBool isLoading = false.obs;

  @override
  void onInit() {
    getFolders();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  getFolders() {
    for (int i = 0; i < 6; i++) {
      foldersList.add(Folder(folderName: 'Data ${i + 1}'));
    }
    // isLoading(true);
    // for (int i = 0; i < addFolderController.folderList.length; i++) {
    //   foldersList.add(addFolderController.folderList[i]);
    //   print(foldersList.length);
    //   update();
    // }
    // isLoading(false);
  }
}
