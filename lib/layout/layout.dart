import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zeal_erp/controllers/indexcontroller.dart';
import 'package:zeal_erp/layout/custom_navigation_rail.dart';
import 'package:zeal_erp/layout/layout_body.dart';

class Layout extends StatelessWidget {
   Layout({super.key});

  final IndexController indexController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WindowBorder(
        color: Colors.transparent,
        width: 0,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [CustomNavigationRail(), LayoutBody()],
        ),
      ),
    );
  }
}

