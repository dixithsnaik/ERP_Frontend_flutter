import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zeal_erp/layout/layout.dart';
import 'package:zeal_erp/utils/global/globals.dart';

class NavigationController extends GetxController {
  dynamic routeTo({required String route, Map<String, dynamic>? arguments}) {
    debugPrint("To: $route");
    return navigatorKey.currentState?.pushNamed(route, arguments: arguments);
  }

  dynamic routeOff({required String route, Map<String, dynamic>? arguments}) {
    debugPrint("Off to: $route");
    return navigatorKey.currentState
        ?.pushReplacementNamed(route, arguments: arguments);
  }

  static Route<dynamic> generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => Layout());
      default:
        return MaterialPageRoute(builder: (_) => Layout());
    }
  }
}
