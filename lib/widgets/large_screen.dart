import 'package:flutter/material.dart';

import '../constants/style.dart';


class LargeScreen extends StatelessWidget {
  const LargeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* appBar: AppBar(
        elevation: 0,
       // backgroundColor: Colors.blue,
      ), */
      body: Row(
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
      ),
    );
  }
}
