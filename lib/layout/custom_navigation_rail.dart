import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zeal_erp/layout/dashboard_items.dart';
import 'package:zeal_erp/layout/purchase_dashboard.dart';
import 'package:zeal_erp/layout/sales_dashboard.dart';
import 'package:zeal_erp/utils/tabs/navigation_rail_tab.dart';
import 'package:zeal_erp/utils/global/pallate.dart';
import 'package:zeal_erp/controllers/indexcontroller.dart';

class CustomNavigationRail extends StatelessWidget {
  CustomNavigationRail({super.key});

  final IndexController indexController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          color: lightblue,
          child: Column(
            children: [
              WindowTitleBarBox(child: MoveWindow()),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: List.generate(
                    NavigationRailTab.values.length,
                    (index) {
                      final tab = NavigationRailTabExtension.fromIndex(index);
                      return Obx(
                        () => DashboardItems(
                          ontap: () => {
                            indexController.navigationRailTab.value = tab,
                          },
                          icon: indexController.navigationRailTab.value == tab
                              ? tab.selectedIcon
                              : tab.unselectedIcon,
                          lable: tab.title,
                          isSelected:
                              indexController.navigationRailTab.value == tab,
                        ),
                      );
                    },
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          width: 170,
          color: background,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  margin: const EdgeInsets.only(top: 20),
                  decoration: const BoxDecoration(color: background),
                  child: Center(
                    child: Image.asset(
                      "assets/icons/logo.png",
                      height: 50,
                    ),
                  ),
                ),
              ),
              Obx(
                () => Expanded(
                  child: indexController.navigationRailTab.value ==
                          NavigationRailTab.sales
                      ? SalesDashboard()
                      : indexController.navigationRailTab.value ==
                              NavigationRailTab.purchase
                          ?  PurchaseDashboard()
                          : const SizedBox(),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
