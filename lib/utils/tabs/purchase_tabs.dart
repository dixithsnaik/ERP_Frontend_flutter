enum PurchaseTab{
  createSupplier,
  createOutsourcing,
  viewAllOutsourcing,
}

extension PurchaseTabExtension on PurchaseTab{
  String get title{
    switch(this){
      case PurchaseTab.createSupplier:
        return 'Create Supplier';
      case PurchaseTab.createOutsourcing:
        return 'Create Outsourcing';
      case PurchaseTab.viewAllOutsourcing:
        return 'View All Outsourcing';
      default:
        return '';
    }
  }

  int get index{
    switch(this){
      case PurchaseTab.createSupplier:
        return 0;
      case PurchaseTab.createOutsourcing:
        return 1;
      case PurchaseTab.viewAllOutsourcing:
        return 2;
      default:
        return 1;
    }
  }

  static PurchaseTab fromIndex(int index){
    switch(index){
      case 0:
        return PurchaseTab.createSupplier;
      case 1:
        return PurchaseTab.createOutsourcing;
      case 2:
        return PurchaseTab.viewAllOutsourcing;
      default:
        return PurchaseTab.createOutsourcing;
    }
  }
}