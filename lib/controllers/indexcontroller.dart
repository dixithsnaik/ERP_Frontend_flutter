import 'package:get/get.dart';
import 'package:zeal_erp/utils/tabs/navigation_rail_tab.dart';
import 'package:zeal_erp/utils/tabs/purchase_tabs.dart';
import 'package:zeal_erp/utils/tabs/sales_tabs.dart';

class IndexController extends GetxController {
  final navigationRailTab = NavigationRailTab.home.obs;
  final salesTab = SalesTabExtension.fromIndex(0).obs;
  final purchaseTab = PurchaseTabExtension.fromIndex(0).obs;
}
