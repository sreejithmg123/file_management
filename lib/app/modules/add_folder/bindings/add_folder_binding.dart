import 'package:get/get.dart';

import '../controllers/add_folder_controller.dart';

class AddFolderBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(
      AddFolderController(),
    );
  }
}
