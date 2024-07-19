import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:zeal_erp/controllers/indexcontroller.dart';
import 'package:zeal_erp/layout/dashboard_items.dart';

import 'package:zeal_erp/utils/tabs/purchase_tabs.dart';

class PurchaseDashboard extends StatelessWidget {
  PurchaseDashboard({super.key});
  final IndexController indexController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        PurchaseTab.values.length,
        (index) {
          final tab = PurchaseTabExtension.fromIndex(index);
          return Obx(
            () {
              return SubDashboardItems(
                lable: tab.title,
                ontap: () => {indexController.purchaseTab.value = tab},
                isSelected: indexController.purchaseTab.value == tab,
              );
            },
          );
        },
      ),
    );
  }
}
