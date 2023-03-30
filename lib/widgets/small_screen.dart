import 'package:flutter/material.dart';

import '../constants/style.dart';

class SmallScreen extends StatelessWidget {
  const SmallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            color: lightGrey,
          ),
        ),
        Expanded(
            flex: 5,
            child: Container(
              color: dark,
            ))
      ],
    );
  }
}
