import 'package:flutter/material.dart';
import 'package:new_app/bottom_nav_pages/notification_page.dart';
import 'package:new_app/bottom_nav_pages/settings_page.dart';

import 'bottom_nav_pages/home_page.dart';
import 'bottom_nav_pages/search_page.dart';

class BottomNavPage extends StatefulWidget {
  const BottomNavPage({Key? key}) : super(key: key);

  @override
  State<BottomNavPage> createState() => _bottomNavPageState();
}

class _bottomNavPageState extends State<BottomNavPage> {
  int index = 0;
  List positions = ['home','search','notifications','settings'];
  List pages = [HomePage(),const SearchPage(),const NotificationsPage(),const SettingsPage()];
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Center(
        child: SizedBox(
          child: Text(
            positions[index],
            style: const TextStyle(color: Colors.black,fontSize: 20),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        width: MediaQuery.of(context).size.width,
        height: 70,
        margin: const EdgeInsets.fromLTRB(20, 0, 20, 15),
        decoration: BoxDecoration(
          color: Colors.limeAccent,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: (){
                setState(() {
                  index = 0;});
              },
              child: const Icon(
                Icons.home_filled, color: Colors.black,size: 25,
              ),
            ),
            InkWell(
              onTap: (){
                setState(() {
                  index = 1;});
              },
              child: const Icon(
                Icons.search, color: Colors.black,size: 25,
              ),
            ),
            InkWell(
              onTap: (){
                setState(() {
                  index = 2;});
              },
              child: const Icon(
                Icons.notifications_active, color: Colors.black,size: 25,
              ),
            ),
            InkWell(
              onTap: (){
                setState(() {
                  index = 3;});
              },
              child: const Icon(
                Icons.settings, color: Colors.black,size: 25,
              ),
            )
          ],
        ),

      ),
    );
  }
}
