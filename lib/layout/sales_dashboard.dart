import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:zeal_erp/layout/dashboard_items.dart';
import 'package:zeal_erp/controllers/indexcontroller.dart';
import 'package:zeal_erp/utils/tabs/sales_tabs.dart';

class SalesDashboard extends StatelessWidget {
  SalesDashboard({super.key});
  final IndexController indexController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(
        SalesTab.values.length,
        (index) {
          final tab = SalesTabExtension.fromIndex(index);
          return Obx(
            () {
              return SubDashboardItems(
                lable: tab.title,
                ontap: () => {indexController.salesTab.value = tab},
                isSelected: indexController.salesTab.value == tab,
              );
            },
          );
        },
      ),
    );
  }
}
