import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/style.dart';
import '../../models/recentfiles.dart';

class thirdrow extends StatelessWidget {
  const thirdrow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Container(
            decoration: BoxDecoration(
                color: lightGrey,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            height: 335,
            width: 702,
            child: Column(
              children: [
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25.0),
                      child: Text(
                        'Recent Orders',
                        textAlign: TextAlign.start,
                        //textAlign: TextAlign.center,
                        style: GoogleFonts.dmSans(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    ElevatedButton.icon(
                      style: TextButton.styleFrom(
                          elevation: 0, backgroundColor: lightGrey),
                      onPressed: () {},
                      icon: Image.asset("assets/icons/three_dot.png"),
                      label: Text(""),
                    )
                  ],
                ),
                SizedBox(
                  height: defaultPadding,
                ),
                SizedBox(
                  height: 270,
                  width: 702,
                  child: DataTable2(

                    columnSpacing: 10,
                    minWidth: 600,
                    columns: [
                      DataColumn(
                        label: Text(
                          'Tracking No.',
                          textAlign: TextAlign.start,
                          //textAlign: TextAlign.center,
                          style: GoogleFonts.dmSans(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          'Product Name',
                          textAlign: TextAlign.start,
                          //textAlign: TextAlign.center,
                          style: GoogleFonts.dmSans(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          'Price',
                          textAlign: TextAlign.start,
                          //textAlign: TextAlign.center,
                          style: GoogleFonts.dmSans(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          'Total Orders',
                          textAlign: TextAlign.start,
                          //textAlign: TextAlign.center,
                          style: GoogleFonts.dmSans(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          'Total Amount',
                          textAlign: TextAlign.start,
                          //textAlign: TextAlign.center,
                          style: GoogleFonts.dmSans(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                    rows: List.generate(
                      demoRecentFiles.length,
                      (index) => recentFileDataRow(demoRecentFiles[index]),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          width: 30,
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                color: lightGrey,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            height: 335,
            width: 430,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Analytics',
                        textAlign: TextAlign.start,
                        //textAlign: TextAlign.center,
                        style: GoogleFonts.dmSans(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  DataRow recentFileDataRow(RecentFile fileInfo) {
    return DataRow(

      //color: MaterialStatePropertyAll(Colors.red),
      onLongPress: () => Color(0xFFFFFFFF),
      cells: [
        DataCell(
          Text(
            fileInfo.trackno!,
            textAlign: TextAlign.start,
            //textAlign: TextAlign.center,
            style: GoogleFonts.dmSans(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.w200,
            ),
          ),
        ),
        DataCell(
          Row(
            children: [
              Image.asset(
                fileInfo.icon!,
                height: 30,
                width: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  fileInfo.productname!,
                  textAlign: TextAlign.start,
                  //textAlign: TextAlign.center,
                  style: GoogleFonts.dmSans(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w200,
                  ),
                ),
              ),
            ],
          ),
        ),
        DataCell(Text(
          fileInfo.price!,
          textAlign: TextAlign.start,
          //textAlign: TextAlign.center,
          style: GoogleFonts.dmSans(
            color: Colors.white,
            fontSize: 12,
            fontWeight: FontWeight.w200,
          ),
        ),),
        DataCell(Text(
          fileInfo.totalorder!,
          textAlign: TextAlign.start,
          //textAlign: TextAlign.center,
          style: GoogleFonts.dmSans(
            color: Colors.white,
            fontSize: 12,
            fontWeight: FontWeight.w200,
          ),
        ),),
        DataCell(Text(
          fileInfo.totalamt!,
          textAlign: TextAlign.start,
          //textAlign: TextAlign.center,
          style: GoogleFonts.dmSans(
            color: Colors.white,
            fontSize: 12,
            fontWeight: FontWeight.w200,
          ),
        ),),
      ],
    );
  }
}
