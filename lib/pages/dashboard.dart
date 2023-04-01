import 'package:admin_panel/constants/style.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'component/below_header.dart';
import 'component/chart.dart';
import 'component/color_representatoin.dart';
import 'component/line_chart.dart';
import 'component/line_titles.dart';
import 'component/third_row.dart';
import 'component/topmenu.dart';

class DashboardScreen extends StatelessWidget {
  //const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(defaultPadding + 14),
        child: Column(
          children: [
            TopNavBar(),
            SizedBox(
              height: (defaultPadding * 2) - 4,
            ),
            Row(
              children: [
                BOXES_BELOW_HEADER(
                  display: 178,
                  imgSrc: "assets/icons/first_box.png",
                  title: 'Save Products',
                ),
                SizedBox(
                  width: defaultPadding,
                ),
                BOXES_BELOW_HEADER(
                  display: 20,
                  imgSrc: "assets/icons/second_box.png",
                  title: 'Stock Products',
                ),
                SizedBox(
                  width: defaultPadding,
                ),
                BOXES_BELOW_HEADER(
                  display: 190,
                  imgSrc: "assets/icons/third_box.png",
                  title: 'Sales Product',
                ),
                SizedBox(
                  width: defaultPadding,
                ),
                BOXES_BELOW_HEADER(
                  display: 12,
                  imgSrc: "assets/icons/fourth_box.png",
                  title: 'Job Application ',
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    decoration: BoxDecoration(
                        color: lightGrey,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    height: 408,
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
                                'Reports',
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
                        Container(
                          height: 325,
                          child: line_cahrt(),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 30,
                  height: 408,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: lightGrey,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    height: 408,
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
                        ppie_chart(
                            pieChartSelectionData: pieChartSelectionData),
                        SizedBox(
                          height: 58,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              height: 15,
                              width: 50,
                            ),
                            pie_cart_info(title: 'Sale', chose: Colors.blue),
                            SizedBox(
                              height: 15,
                              width: 40,
                            ),
                            pie_cart_info(
                                title: 'Distribute', chose: Colors.green),
                            SizedBox(
                              height: 15,
                              width: 40,
                            ),
                            pie_cart_info(
                                title: 'Return', chose: Colors.pinkAccent),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            //third row
            SizedBox(
              height: 30,
            ),
            thirdrow(),

          ],
        ),
      ),
    );
  }

  @override
  List<PieChartSectionData> pieChartSelectionData = [
    PieChartSectionData(
      color: Colors.white,
      value: 15,
      showTitle: false,
      radius: 13,
    ),
    PieChartSectionData(
        color: Colors.blue, value: 30, showTitle: false, radius: 25),
    PieChartSectionData(
        color: Colors.green, value: 10, showTitle: false, radius: 16),
    PieChartSectionData(
        color: Colors.pink, value: 17, showTitle: false, radius: 20),
  ];
}

