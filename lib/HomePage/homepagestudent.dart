import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:school_management_system/StudentPortal/StudentDashboard/Studentd]Dashboard.dart';
import 'package:school_management_system/StudentPortal/StudentProfile/profile.dart';
import 'package:school_management_system/colors/color.dart';

import '../StudentPortal/ReportCard/reportcard.dart';
import '../StudentPortal/Attendance/attendance.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _page = 0;
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  // to show list of navigation screens
  List screens = [
    const DashBoard2(),
    const Attendance(),
    const ReportCard(),
    const StudentProfile(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      //     to show bottomNavigationBar
      bottomNavigationBar: CurvedNavigationBar(
        height: 60,
        backgroundColor: Colors.white,
        buttonBackgroundColor: app5.withOpacity(0.6),
        color: app.withOpacity(0.6),
        key: _bottomNavigationKey,
        items: const <Widget>[
          Icon(Icons.home_outlined, color: Colors.black, size: 30),
          Icon(Icons.event_note, color: Colors.black, size: 30),
          Icon(Icons.card_membership, color: Colors.black, size: 30),
          Icon(Icons.person, color: Colors.black, size: 30),
        ],
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
      ),
      body: screens.elementAt(_page),
    ));
  }
}
