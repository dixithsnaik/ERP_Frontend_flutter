import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import 'package:zeal_erp/utils/global/pallate.dart';

class PendingPoPage extends StatefulWidget {
  const PendingPoPage({super.key});

  @override
  State<PendingPoPage> createState() => _PendingPoPageState();
}

class _PendingPoPageState extends State<PendingPoPage> {
  List<PendingPos> pendingPOs = <PendingPos>[];
  late PendingPOsSource pendingPOsSource;

  @override
  void initState() {
    super.initState();
    pendingPOs = getPendingPOs();
    pendingPOsSource = PendingPOsSource(pendingPOs: pendingPOs);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ).copyWith(top: 25),
        color: white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Pending PO's",
              style: GoogleFonts.novaSquare(
                textStyle: const TextStyle(
                    color: textPrimary,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            SfDataGrid(
              gridLinesVisibility: GridLinesVisibility.none,
              headerGridLinesVisibility: GridLinesVisibility.none,
              source: pendingPOsSource,
              columnWidthMode: ColumnWidthMode.fill,
              columns: <GridColumn>[
                GridColumn(
                    autoFitPadding: const EdgeInsets.all(8),
                    columnName: 'Work Order Number',
                    label: Container(
                        color: tabselection,
                        padding: const EdgeInsets.all(8.0),
                        alignment: Alignment.center,
                        child: Text(
                          'Work Order Number',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                                color: textPrimary,
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          ),
                        ))),
                GridColumn(
                    columnName: 'PO Number',
                    label: Container(
                        color: tabselection,
                        padding: const EdgeInsets.all(8.0),
                        alignment: Alignment.center,
                        child: Text(
                          'PO Number',
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                                color: textPrimary,
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          ),
                        ))),
                GridColumn(
                    columnName: 'Customer Name',
                    label: Container(
                        color: tabselection,
                        padding: const EdgeInsets.all(8.0),
                        alignment: Alignment.center,
                        child: Text(
                          'Customer Name',
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                                color: textPrimary,
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          ),
                        ))),
                GridColumn(
                    columnName: 'PO Date',
                    label: Container(
                        color: tabselection,
                        padding: const EdgeInsets.all(8.0),
                        alignment: Alignment.center,
                        child: Text(
                          'PO Date',
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                                color: textPrimary,
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          ),
                        ))),
                GridColumn(
                    columnName: 'Amount',
                    label: Container(
                        color: tabselection,
                        padding: const EdgeInsets.all(8.0),
                        alignment: Alignment.center,
                        child: Text(
                          'Amount',
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                                color: textPrimary,
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          ),
                        ))),
                GridColumn(
                    columnName: 'Project Engineer',
                    label: Container(
                        color: tabselection,
                        padding: const EdgeInsets.all(8.0),
                        alignment: Alignment.center,
                        child: Text(
                          'Project Engineer',
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                                color: textPrimary,
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          ),
                        ))),
                GridColumn(
                    columnName: 'Quality Engineer',
                    label: Container(
                        color: tabselection,
                        padding: const EdgeInsets.all(8.0),
                        alignment: Alignment.center,
                        child: Text(
                          'Quality Engineer',
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                                color: textPrimary,
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          ),
                        ))),
                GridColumn(
                    columnName: 'Delivery Date',
                    label: Container(
                        color: tabselection,
                        padding: const EdgeInsets.all(8.0),
                        alignment: Alignment.center,
                        child: Text(
                          'Delivery Date',
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                                color: textPrimary,
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          ),
                        ))),
                GridColumn(
                    columnName: 'Status',
                    label: Container(
                        color: tabselection,
                        padding: const EdgeInsets.all(8.0),
                        alignment: Alignment.center,
                        child: Text(
                          'Status',
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                                color: textPrimary,
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          ),
                        ))),
                GridColumn(
                    columnName: 'Remarks',
                    label: Container(
                        color: tabselection,
                        padding: const EdgeInsets.all(8.0),
                        alignment: Alignment.center,
                        child: Text(
                          'Remarks',
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                                color: textPrimary,
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          ),
                        ))),
                GridColumn(
                    columnName: 'Actions',
                    label: Container(
                        color: tabselection,
                        padding: const EdgeInsets.all(8.0),
                        alignment: Alignment.center,
                        child: Text(
                          'Actions',
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                                color: textPrimary,
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          ),
                        ))),
              ],
            ),
          ],
        ));
  }

  List<PendingPos> getPendingPOs() {
    return [
      PendingPos(
          '1231',
          '123',
          'customerName',
          'poDate',
          'amount',
          'projectEngineer',
          'qualityEngineer',
          'deliveryDate',
          'status',
          'remarks',
          'actions'),
      PendingPos(
          '1231',
          '123',
          'customerName',
          'poDate',
          'amount',
          'projectEngineer',
          'qualityEngineer',
          'deliveryDate',
          'status',
          'remarks',
          'actions'),
      PendingPos(
          '1231',
          '123',
          'customerName',
          'poDate',
          'amount',
          'projectEngineer',
          'qualityEngineer',
          'deliveryDate',
          'status',
          'remarks',
          'actions'),
      PendingPos(
          '1231',
          '123',
          'customerName',
          'poDate',
          'amount',
          'projectEngineer',
          'qualityEngineer',
          'deliveryDate',
          'status',
          'remarks',
          'actions'),
    ];
  }
}

class PendingPos {
  PendingPos(
      this.workOrderNumber,
      this.poNumber,
      this.customerName,
      this.poDate,
      this.amount,
      this.projectEngineer,
      this.qualityEngineer,
      this.deliveryDate,
      this.status,
      this.remarks,
      this.actions);
  final String workOrderNumber;
  final String poNumber;
  final String customerName;
  final String poDate;
  final String amount;
  final String projectEngineer;
  final String qualityEngineer;
  final String deliveryDate;
  final String status;
  final String remarks;
  final String actions;
}

class PendingPOsSource extends DataGridSource {
  /// Creates the employee data source class with required details.
  PendingPOsSource({required List<PendingPos> pendingPOs}) {
    _pendingPOs = pendingPOs
        .map<DataGridRow>((e) => DataGridRow(cells: [
              DataGridCell<String>(
                  columnName: 'Work Order Number', value: e.workOrderNumber),
              DataGridCell<String>(columnName: 'PO Number', value: e.poNumber),
              DataGridCell<String>(
                  columnName: 'Customer Name', value: e.customerName),
              DataGridCell<String>(columnName: 'PO Date', value: e.poDate),
              DataGridCell<String>(columnName: 'Amount', value: e.amount),
              DataGridCell<String>(
                  columnName: 'Project Engineer', value: e.projectEngineer),
              DataGridCell<String>(
                  columnName: 'Quality Engineer', value: e.qualityEngineer),
              DataGridCell<String>(
                  columnName: 'Delivery Date', value: e.deliveryDate),
              DataGridCell<String>(columnName: 'Status', value: e.status),
              DataGridCell<String>(columnName: 'Remarks', value: e.remarks),
              DataGridCell<String>(columnName: 'Actions', value: e.actions),
            ]))
        .toList();
  }

  List<DataGridRow> _pendingPOs = [];

  @override
  List<DataGridRow> get rows => _pendingPOs;

  @override
  DataGridRowAdapter buildRow(DataGridRow row) {
    return DataGridRowAdapter(
        cells: row.getCells().map<Widget>((e) {
      return Container(
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(width: 2, color: tabselection),
          ),
        ),
        alignment: Alignment.center,
        child: Text(
          e.value.toString(),
          style: GoogleFonts.montserrat(
            textStyle: const TextStyle(
                color: textPrimary, fontSize: 14, fontWeight: FontWeight.w500),
          ),
        ),
      );
    }).toList());
  }
}
