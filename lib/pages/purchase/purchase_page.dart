import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zeal_erp/controllers/indexcontroller.dart';
import 'package:zeal_erp/pages/purchase/purchase_tabs/create_outsourcing/create_outsourcing_page.dart';
import 'package:zeal_erp/pages/purchase/purchase_tabs/create_supplier/create_supplier_page.dart';
import 'package:zeal_erp/pages/purchase/purchase_tabs/view_all_outsourcing/view_all_outsourcing_page.dart';

class PurchasePage extends StatelessWidget {
  PurchasePage({super.key});

  final IndexController indexController = Get.find();

  final tabs = const  [
    CreateSupplierPage(),
    CreateOutsourcingPage(),
    ViewAllOutsourcingPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(()=>tabs[indexController.purchaseTab.value.index]);
  }
}
