import 'package:admin_panel/pages/component/sidemenu.dart';
import 'package:admin_panel/pages/dashboard.dart';
import 'package:flutter/material.dart';

import '../constants/style.dart';

class LargeScreen extends StatelessWidget {
  const LargeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: SideMenu(),
          ),
          Expanded(
            flex: 5,
            child: DashboardScreen(),
          )
        ],
      ),
    );
  }
}
