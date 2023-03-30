import 'package:admin_panel/constants/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: lightGrey,
      child: ListView(
        children: [
          DrawerHeader(
            child: Image.asset("assets/icons/logo.png"),
          ),
          DrawerListTile(
            title: "Dashboard",
            svgSrc: "assets/icons/menu_dashboard.png",
            press: () {},
          ),
          DrawerListTile(
            title: "Analytics",
            svgSrc: "assets/icons/menu_tran.png",
            press: () {},
          ),
          DrawerListTile(
            title: "Invoice",
            svgSrc: "assets/icons/menu_task.png",
            press: () {},
          ),
          DrawerListTile(
            title: "Schedule",
            svgSrc: "assets/icons/menu_doc.png",
            press: () {},
          ),
          DrawerListTile(
            title: "Calender",
            svgSrc: "assets/icons/menu_store.png",
            press: () {},
          ),
          DrawerListTile(
            title: "Messages",
            svgSrc: "assets/icons/menu_notification.png",
            press: () {},
          ),
          DrawerListTile(
            title: "Notification",
            svgSrc: "assets/icons/menu_profile.png",
            press: () {},
          ),
          DrawerListTile(
            title: "Settings",
            svgSrc: "assets/icons/menu_setting.png",
            press: () {},
          ), 
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    // For selecting those three line once press "Command+D"
    required this.title,
    required this.svgSrc,
    required this.press,
  }) : super(key: key);

  final String title, svgSrc;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: Image.asset(
        svgSrc,
        color: icons,
        height: 16,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.white54),
      ),
    );
  }
}