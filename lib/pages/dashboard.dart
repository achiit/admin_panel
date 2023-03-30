import 'package:admin_panel/constants/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'component/topmenu.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            TopNavBar(),
            SizedBox(
              height: (defaultPadding * 2) - 4,
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 116,
                    decoration: BoxDecoration(
                      color: lightGrey,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 28,
                          height: 116,
                        ),
                        SizedBox(
                          height: 60,
                          width: 60,
                          child: Row(
                            children: [
                              Image.asset("assets/icons/first_box.png")
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 23,
                          height: 116,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 0.0),
                              child: Text(
                                '178+',
                                textAlign: TextAlign.left,
                                style: GoogleFonts.dmSans(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            Text(
                              'Save Products',
                              //textAlign: TextAlign.center,
                              style: GoogleFonts.dmSans(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: defaultPadding,
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 116,
                    decoration: BoxDecoration(
                      color: lightGrey,
                      borderRadius: BorderRadius.all(Radius.circular(10)),                      
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 28,
                          height: 116,
                        ),
                        SizedBox(
                          height: 60,
                          width: 60,
                          child: Row(
                            children: [
                              Image.asset("assets/icons/second_box.png")
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 23,
                          height: 116,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 0.0),
                              child: Text(
                                '20+',
                                textAlign: TextAlign.left,
                                style: GoogleFonts.dmSans(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            Text(
                              'Stock Products',
                              //textAlign: TextAlign.center,
                              style: GoogleFonts.dmSans(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: defaultPadding,
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 116,
                    decoration: BoxDecoration(
                      color: lightGrey,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 28,
                          height: 116,
                        ),
                        SizedBox(
                          height: 60,
                          width: 60,
                          child: Row(
                            children: [
                              Image.asset("assets/icons/third_box.png")
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 23,
                          height: 116,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 0.0),
                              child: Text(
                                '190+',
                                textAlign: TextAlign.left,
                                style: GoogleFonts.dmSans(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            Text(
                              'Sales Products',
                              //textAlign: TextAlign.center,
                              style: GoogleFonts.dmSans(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: defaultPadding,
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 116,
                    decoration: BoxDecoration(
                      color: lightGrey,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 28,
                          height: 116,
                        ),
                        SizedBox(
                          height: 60,
                          width: 60,
                          child: Row(
                            children: [
                              Image.asset("assets/icons/fourth_box.png")
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 23,
                          height: 116,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 0.0),
                              child: Text(
                                '12+',
                                textAlign: TextAlign.left,
                                style: GoogleFonts.dmSans(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            Text(
                              'Job Applications',
                              //textAlign: TextAlign.center,
                              style: GoogleFonts.dmSans(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
