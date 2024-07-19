import 'package:flutter/widgets.dart';
import 'package:zeal_erp/utils/global/icons.dart';

/// Enum for the navigation rail tabs
enum NavigationRailTab{
  home,
  sales,
  purchase,
  store,
  engineers,
  about,
}

extension NavigationRailTabExtension on NavigationRailTab {
  int get index {
    switch (this) {
      case NavigationRailTab.home:
        return 0;
      case NavigationRailTab.sales:
        return 1;
      case NavigationRailTab.purchase:
        return 2;
      case NavigationRailTab.store:
        return 3;
      case NavigationRailTab.engineers:
        return 4;
      case NavigationRailTab.about:
        return 5;
    }
  }

  static NavigationRailTab fromIndex(int index) {
    switch (index) {
      case 0:
        return NavigationRailTab.home;
      case 1:
        return NavigationRailTab.sales;
      case 2:
        return NavigationRailTab.purchase;
      case 3:
        return NavigationRailTab.store;
      case 4:
        return NavigationRailTab.engineers;
      case 5:
        return NavigationRailTab.about;
      default:
        return NavigationRailTab.home;
    }
  }

  String get title {
    switch (this) {
      case NavigationRailTab.home:
        return 'Home';
      case NavigationRailTab.sales:
        return 'Sales';
      case NavigationRailTab.purchase:
        return 'Purchase';
      case NavigationRailTab.store:
        return 'Store';
      case NavigationRailTab.engineers:
        return 'Engineers';
      case NavigationRailTab.about:
        return 'About';
    }
  }

  Widget get unselectedIcon{
    switch (this) {
      case NavigationRailTab.home:
        return home_unselected;
      case NavigationRailTab.sales:
        return sales_unselected;
      case NavigationRailTab.purchase:
        return purchase_unselected;
      case NavigationRailTab.store:
        return store_unselected;
      case NavigationRailTab.engineers:
        return eng_unselected;
      case NavigationRailTab.about:
        return about_unselected;
    }
  }

  Widget get selectedIcon{
    switch (this) {
      case NavigationRailTab.home:
        return home_selected;
      case NavigationRailTab.sales:
        return sales_selected;
      case NavigationRailTab.purchase:
        return purchase_selected;
      case NavigationRailTab.store:
        return store_selected;
      case NavigationRailTab.engineers:
        return eng_selected;
      case NavigationRailTab.about:
        return about_selected;
    }
  }
  
}

