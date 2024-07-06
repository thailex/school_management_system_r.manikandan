import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:school_management_system/TeacherPortal/TeacherDashboard/teacherdashboard.dart';
import 'package:school_management_system/TeacherPortal/Doubts/doubts.dart';
import 'package:school_management_system/TeacherPortal/AttendanceDetails/leaveapprove.dart';
import 'package:school_management_system/TeacherPortal/AttendanceDetails/teacherattendance.dart';
import 'package:school_management_system/TeacherPortal/TeacherProfile/teacherprofile.dart';
import 'package:school_management_system/colors/color.dart';

import '../StudentPortal/ReportCard/reportcard.dart';

class HomeTeacher extends StatefulWidget {
  const HomeTeacher({super.key});

  @override
  State<HomeTeacher> createState() => _HomeTeacherState();
}

class _HomeTeacherState extends State<HomeTeacher> {
  int _page = 0;
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  // to show list of navigation screens
  List screens = [
    const TeacherDashBoard(),
    const TeacherAttendance(),
    const Doubts(),
    const TeacherProfile(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      //     to show bottomNavigationBar
      bottomNavigationBar: CurvedNavigationBar(
        height: 60,
        backgroundColor: Colors.white,
        buttonBackgroundColor: app5.withOpacity(0.4),
        color: app.withOpacity(0.2),
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
