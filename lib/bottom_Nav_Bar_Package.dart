import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'bottom_nav_pages/home_page.dart';
import 'bottom_nav_pages/notification_page.dart';
import 'bottom_nav_pages/search_page.dart';
import 'bottom_nav_pages/settings_page.dart';

class BottomNavPackagePage extends StatefulWidget {
  const BottomNavPackagePage({Key? key}) : super(key: key);

  @override
  State<BottomNavPackagePage> createState() => _BottomNavPackagePageState();
}

class _BottomNavPackagePageState extends State<BottomNavPackagePage> {
  int _bottomNavIndex = 0;
  List<IconData> iconList = [Icons.home_filled,Icons.search,Icons.notifications_active,Icons.settings];
  List pages = [HomePage(),const SearchPage(),const NotificationsPage(),const SettingsPage()];
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_bottomNavIndex],
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: iconList,
        backgroundColor: Colors.green,
        rightCornerRadius: 32,
        leftCornerRadius:  32,
        activeIndex: _bottomNavIndex,
        activeColor: Colors.lime,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.defaultEdge,
        onTap: (index) => setState(() => _bottomNavIndex = index),
        //other params
      ),
    );
  }
}
