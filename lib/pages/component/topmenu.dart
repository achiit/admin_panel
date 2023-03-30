

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/style.dart';

class TopNavBar extends StatelessWidget {
  const TopNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
                  'Dashboard',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.dmSans(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
            Spacer(),
            /* Expanded(
              child: SortField(),
            ), */
            SortField(),
            SortField()
          ],
        )
      ],
    );
  }
}

class SortField extends StatelessWidget {
  const SortField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: defaultPadding),
      padding: EdgeInsets.symmetric(horizontal: defaultPadding,
      vertical: defaultPadding/2),
      decoration: BoxDecoration(color: lightGrey,
      borderRadius: BorderRadius.circular(5)),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: defaultPadding / 2),
            child: Text("10-10-2021",
            style: TextStyle(color: Colors.white),),
          ),
          Icon(Icons.keyboard_arrow_down)
        ],
      ),
    );
  }
}

