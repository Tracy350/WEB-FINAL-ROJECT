import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_vendor/theme/colors.dart';

class FrontdeskTable extends StatelessWidget {
  const FrontdeskTable({
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
              'Room number',
              style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                      fontWeight: FontWeight.w600, color: Colors.blueAccent)),
            ),
            size: ColumnSize.S,
          ),
          DataColumn2(
            label: Text(
              'Bed type',
              style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                      fontWeight: FontWeight.w600, color: Colors.blueAccent)),
            ),
            size: ColumnSize.M,
          ),
          DataColumn2(
            label: Text(
              'Room Floor',
              style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                      fontWeight: FontWeight.w600, color: Colors.blueAccent)),
            ),
            size: ColumnSize.S,
          ),
          DataColumn2(
            label: Text(
              'Room Facility',
              style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                      fontWeight: FontWeight.w600, color: Colors.blueAccent)),
            ),
            size: ColumnSize.S,
          ),
          DataColumn2(
            label: Text(
              'Status',
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
        "Room number": index,
        "Bed type": "Item $index",
        "Room Number": index * 2,
        'Room Facility': "\$${index * 30}",
        "Status": "Available",
      };
    });

    if (index >= _data.length) {
      return null;
    }

    final item = _data[index];
    return DataRow.byIndex(
      index: index,
      cells: [
        DataCell(
          Text(
            '${item["Room Number"]}',
            style: GoogleFonts.montserrat(textStyle: TextStyle(fontSize: 12)),
          ),
        ),
        DataCell(Text(
          '${item["Bed Type"]}',
          style: GoogleFonts.montserrat(textStyle: TextStyle(fontSize: 12)),
        )),
        DataCell(Text(
          '${item["Room Floor"]}',
          style: GoogleFonts.montserrat(textStyle: TextStyle(fontSize: 12)),
        )),
        DataCell(Text(
          '${item["Room Facility"]}',
          style: GoogleFonts.montserrat(textStyle: TextStyle(fontSize: 12)),
        )),
        DataCell(Container(
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: Colors.greenAccent.withOpacity(0.2),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Text(
            '${item["Status"]}',
            style: GoogleFonts.montserrat(textStyle: TextStyle(fontSize: 12)),
          ),
        )),
      ],
    );
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => 50; // Replace 50 with the actual number of rows.

  @override
  int get selectedRowCount => 0;
}
