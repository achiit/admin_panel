import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/style.dart';

class BOXES_BELOW_HEADER extends StatelessWidget {
  const BOXES_BELOW_HEADER({
    super.key,
    required this.display,
    required this.title,
    required this.imgSrc,
  });
  final int display;
  final String title;
  final String imgSrc;

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
                children: [Image.asset(imgSrc)],
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
                    "$display+",
                    textAlign: TextAlign.left,
                    style: GoogleFonts.dmSans(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Text(
                  title,
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
    );
  }
}