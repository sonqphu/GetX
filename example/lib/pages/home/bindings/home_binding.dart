import 'package:get/get.dart';
// ignore: prefer_relative_imports
import 'package:get_demo/pages/home/presentation/controllers/checkconective_controller.dart';
import '../data/home_api_provider.dart';

import '../data/home_repository.dart';
import '../domain/adapters/repository_adapter.dart';
import '../presentation/controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ConnectivityService());
    Get.lazyPut<IHomeProvider>(() => HomeProvider());
    Get.lazyPut<IHomeRepository>(() => HomeRepository(provider: Get.find()));
    Get.lazyPut(() => HomeController(homeRepository: Get.find()));
  }
}
