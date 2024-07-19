enum SalesTab {
  pendingPOs,
  createCustomer,
  createQuotation,
  viewAllQuotations,
  createPurchaseOrder,
  viewAllPurchaseOrders,
}

extension SalesTabExtension on SalesTab {
  String get title {
    switch (this) {
      case SalesTab.pendingPOs:
        return 'Pending POs';
      case SalesTab.createCustomer:
        return 'Create Customer';
      case SalesTab.createQuotation:
        return 'Create Quotation';
      case SalesTab.viewAllQuotations:
        return 'View All Quotations';
      case SalesTab.createPurchaseOrder:
        return 'Create Purchase Order';
      case SalesTab.viewAllPurchaseOrders:
        return 'View All Purchase Orders';
      default:
        return '';
    }
  }

  int get index {
    switch (this) {
      case SalesTab.pendingPOs:
        return 0;
      case SalesTab.createCustomer:
        return 1;
      case SalesTab.createQuotation:
        return 2;
      case SalesTab.viewAllQuotations:
        return 3;
      case SalesTab.createPurchaseOrder:
        return 4;
      case SalesTab.viewAllPurchaseOrders:
        return 5;
      default:
        return 0;
    }
  }

  static SalesTab fromIndex(int index) {
    switch (index) {
      case 0:
        return SalesTab.pendingPOs;
      case 1:
        return SalesTab.createCustomer;
      case 2:
        return SalesTab.createQuotation;
      case 3:
        return SalesTab.viewAllQuotations;
      case 4:
        return SalesTab.createPurchaseOrder;
      case 5:
        return SalesTab.viewAllPurchaseOrders;
      default:
        return SalesTab.pendingPOs;
    }
  }
}
