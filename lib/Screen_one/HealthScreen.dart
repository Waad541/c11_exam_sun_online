import 'package:exam/Screen_one/Home_tab.dart';
import 'package:exam/Screen_one/Grid_tab.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'CalenderTab.dart';
import 'Uers_tab.dart';

class HealthScreen extends StatefulWidget {
  static const String routeName = 'health';
  const HealthScreen({super.key});

  @override
  State<HealthScreen> createState() => _HealthScreenState();
}

class _HealthScreenState extends State<HealthScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Image.asset(
            'assets/images/logo.png',
          ),
        ),
        leadingWidth: 80,
        titleSpacing: 0,
        title: Text(
          'Moody',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'kefafont',
              fontSize: 24),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: badges.Badge(
                // onTap: (){},
                position: badges.BadgePosition.topEnd(end: 2, top: 2),
                showBadge: true,
                child: Icon(
                  Icons.notifications_none_outlined,
                  size: 30,
                )),
          )
        ],
      ),
      body: tabs[index],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          currentIndex: index,
          onTap: (currentIndex) {
            index = currentIndex;
            setState(() {});
          },
          selectedItemColor: Color(0xff027A48),
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.grid_view), label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_today_outlined), label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_2_outlined), label: '')
          ]),
    );
  }

  List<Widget> tabs = [
    HomeTab(),
    GridTab(),
    CalenderTab(),
    UserTab(),
  ];
}
