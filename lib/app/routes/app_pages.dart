import 'package:get/get.dart';

import 'package:file_management/app/modules/add_folder/bindings/add_folder_binding.dart';
import 'package:file_management/app/modules/add_folder/views/add_folder_view.dart';
import 'package:file_management/app/modules/authentication/bindings/authentication_binding.dart';
import 'package:file_management/app/modules/authentication/views/authentication_view.dart';
import 'package:file_management/app/modules/detailed_view/bindings/detailed_view_binding.dart';
import 'package:file_management/app/modules/detailed_view/views/detailed_view_view.dart';
import 'package:file_management/app/modules/dialog/bindings/dialog_binding.dart';
import 'package:file_management/app/modules/dialog/views/dialog_view.dart';
import 'package:file_management/app/modules/home/bindings/home_binding.dart';
import 'package:file_management/app/modules/home/views/home_view.dart';
import 'package:file_management/app/modules/splash/bindings/splash_binding.dart';
import 'package:file_management/app/modules/splash/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.ADD_FOLDER,
      page: () => AddFolderView(),
      binding: AddFolderBinding(),
    ),
    GetPage(
      name: _Paths.DIALOG,
      page: () => DialogpopupView(),
      binding: DialogBinding(),
    ),
    GetPage(
      name: _Paths.DETAILED_VIEW,
      page: () => DetailedViewView(),
      binding: DetailedViewBinding(),
    ),
    GetPage(
      name: _Paths.AUTHENTICATION,
      page: () => AuthenticationView(),
      binding: AuthenticationBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => SplashView(),
      binding: SplashBinding(),
    ),
  ];
}
