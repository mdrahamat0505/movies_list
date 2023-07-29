import 'package:get/get.dart';
import 'package:movies_list/controllers/home_page_controller.dart';

import 'package:movies_list/services/hive_service.dart';

class InitBinding extends Bindings {
  @override
  Future<void> dependencies() async {
    await Get.put(HomePageController());
    await Get.put(HiveService()).onInitForApp();
    await Get.put(HomePageController());
    // TODO: implement dependencies
  }
}
