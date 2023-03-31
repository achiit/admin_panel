import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class pie_cart_info extends StatelessWidget {
  const pie_cart_info({
    super.key,
    required this.title,
    required this.chose,
  });
  final String title;
  final Color chose;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 15,
          width: 15,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(100))),
          child: ColoredBox(
            color: chose,
          ),
        ),
        SizedBox(
          width: 10,
          //child: ColoredBox(color: Colors.blue),
        ),
        Text(
          title,
          textAlign: TextAlign.start,
          //textAlign: TextAlign.center,
          style: GoogleFonts.dmSans(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}