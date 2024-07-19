import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zeal_erp/controllers/indexcontroller.dart';
import 'package:zeal_erp/pages/sales/sales_tabs/create_customer/create_customer_page.dart';
import 'package:zeal_erp/pages/sales/sales_tabs/create_purchase_order/create_purchase_order_page.dart';
import 'package:zeal_erp/pages/sales/sales_tabs/create_quotation/create_quotation_page.dart';
import 'package:zeal_erp/pages/sales/sales_tabs/pending_po/pending_po_page.dart';
import 'package:zeal_erp/pages/sales/sales_tabs/view_all_purchase_order/view_all_purchase_order_page.dart';
import 'package:zeal_erp/pages/sales/sales_tabs/view_all_quotations/view_all_quotations_page.dart';

class SalesPage extends StatelessWidget {
  SalesPage({super.key});

  final IndexController _indexController = Get.find();
  final tabs = const [
    PendingPoPage(),
    CreateCustomerPage(),
    CreateQuotationPage(),
    ViewAllQuotationsPage(),
    CreatePurchaseOrderPage(),
    ViewAllPurchaseOrderPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return tabs[_indexController.salesTab.value.index];
    });
  }
}
