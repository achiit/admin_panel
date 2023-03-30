import 'package:admin_panel/helpers/responsiveness.dart';
import 'package:admin_panel/widgets/large_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'widgets/small_screen.dart';

class SiteLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveWidget(largeScreen: LargeScreen(), smallScreen: SmallScreen(), ),
    );
  }
}
