import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zeal_erp/controllers/indexcontroller.dart';
import 'package:zeal_erp/pages/about/about_page.dart';
import 'package:zeal_erp/pages/employee/employee_page.dart';
import 'package:zeal_erp/pages/home/homepage.dart';
import 'package:zeal_erp/pages/purchase/purchase_page.dart';
import 'package:zeal_erp/pages/sales/sales_page.dart';
import 'package:zeal_erp/pages/store/store_page.dart';

class MainContentArea extends StatefulWidget {
  const MainContentArea({super.key});

  @override
  State<MainContentArea> createState() => _MainContentAreaState();
}

class _MainContentAreaState extends State<MainContentArea> {
  final IndexController _indexController = Get.find();
  final _tabs = [
    const Homepage(),
    SalesPage(),
    PurchasePage(),
    const StorePage(),
    const EmployeePage(),
    const AboutPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Obx(
        () {
          return _tabs[_indexController.navigationRailTab.value.index];
        },
      ),
    );
  }
}
