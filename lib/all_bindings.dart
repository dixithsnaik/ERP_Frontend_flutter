import 'package:get/get.dart';
import 'package:zeal_erp/controllers/indexcontroller.dart';

class AllBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IndexController>(() => IndexController(), fenix: false);
  }
}
