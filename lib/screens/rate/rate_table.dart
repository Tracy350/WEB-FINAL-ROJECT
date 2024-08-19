import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_vendor/theme/colors.dart';

class RateTable extends StatelessWidget {
  const RateTable({
    super.key,
    this.border,
    this.fixedColumnsColor,
  });
  final TableBorder? border;
  final Color? fixedColumnsColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.fromBorderSide(BorderSide(
          color: border?.top.color ?? const Color.fromARGB(255, 197, 197, 197),
          width: border?.top.width ?? 0.5,
        )),
        borderRadius:
            BorderRadius.circular(8.0), // Optional: adds rounded corners
      ),
      child: PaginatedDataTable(
    
        columnSpacing: 183,
        columns: [
          DataColumn2(
            label: Text(
              'Reservation ID',
              style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                      fontWeight: FontWeight.w600, color: Colors.blueAccent)),
            ),
            size: ColumnSize.S,
          ),
          DataColumn2(
            label: Text(
              'Name',
              style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                      fontWeight: FontWeight.w600, color: Colors.blueAccent)),
            ),
            size: ColumnSize.M,
          ),
          DataColumn2(
            label: Text(
              'Room Number',
              style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                      fontWeight: FontWeight.w600, color: Colors.blueAccent)),
            ),
            size: ColumnSize.S,
          ),
          DataColumn2(
            label: Text(
              'Total amount',
              style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                      fontWeight: FontWeight.w600, color: Colors.blueAccent)),
            ),
            size: ColumnSize.S,
          ),
          DataColumn2(
            label: Text(
              'Amount paid',
              style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                      fontWeight: FontWeight.w600, color: Colors.blueAccent)),
            ),
            size: ColumnSize.S,
          ),
        ],
        source: _DataSource(context),
      ),
    );
  }
}

class _DataSource extends DataTableSource {
  final BuildContext context;

  _DataSource(this.context);

  @override
  DataRow? getRow(int index) {
    // Replace this with your actual data source.
    final List<Map<String, dynamic>> _data = List.generate(50, (index) {
      return {
        "Reservation ID": index,
        "Name": "Item $index",
        "Room Number": index * 2,
        'Total amount': "\$ $index*30",
        "Amount paid": "\$ 200",
      };
    });

    if (index >= _data.length) {
      return null;
    }

    final item = _data[index];
    return DataRow.byIndex(
      index: index,
      cells: [
        DataCell(Text(
          'hello',
          style: GoogleFonts.montserrat(textStyle: TextStyle(fontSize: 12)),
        )),
        DataCell(Text(
          '${item["name"]}',
          style: GoogleFonts.montserrat(textStyle: TextStyle(fontSize: 12)),
        )),
        DataCell(Text(
          '${item["quantity"]}',
          style: GoogleFonts.montserrat(textStyle: TextStyle(fontSize: 12)),
        )),
        DataCell(Text(
          '${item["total_amount"]}',
          style: GoogleFonts.montserrat(textStyle: TextStyle(fontSize: 12)),
        )),
        DataCell(Text(
          '${item["amount_paid"]}',
          style: GoogleFonts.montserrat(textStyle: TextStyle(fontSize: 12)),
        )),
      ],
    );
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => 100; // Replace 100 with the actual number of rows.

  @override
  int get selectedRowCount => 0;
}
