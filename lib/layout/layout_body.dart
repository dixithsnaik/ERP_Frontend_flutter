import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zeal_erp/controllers/indexcontroller.dart';
import 'package:zeal_erp/layout/mainarea.dart';
import 'package:zeal_erp/layout/windowbuttons.dart';

import 'package:zeal_erp/utils/global/pallate.dart';

class LayoutBody extends StatelessWidget {
  LayoutBody({super.key});
  final IndexController indexController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: const BoxDecoration(color: background),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            WindowTitleBarBox(
              child: Row(
                children: [
                  Expanded(child: MoveWindow()),
                  const WindowButtons()
                ],
              ),
            ),
            const MainContentArea(),
          ],
        ),
      ),
    );
  }
}