import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_management_system/HomePage/homepagestudent.dart';
import 'package:school_management_system/StudentPortal/StudentDashboard/Studentd%5DDashboard.dart';
import 'package:school_management_system/TeacherPortal/TeacherDashboard/teacherdashboard.dart';
import 'package:school_management_system/colors/color.dart';

import '../HomePage/homepageteacher.dart';

class PortalSelction extends StatefulWidget {
  const PortalSelction({super.key});

  @override
  State<PortalSelction> createState() => _PortalSelctionState();
}

class _PortalSelctionState extends State<PortalSelction> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: Text(
          'Home Work',
          style: GoogleFonts.poppins(
              textStyle: TextStyle(
            decoration: TextDecoration.none,
            fontSize: 17,
            fontWeight: FontWeight.w600,
            color: black,
          )),
        ),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              app5.withOpacity(0.6),
              app.withOpacity(0.2),
              // app3,
              // app5.withOpacity(0.8),
              // app.withOpacity(0.6),
              // app.withOpacity(0.4),
              // app6.withOpacity(0.7),
              // app7.withOpacity(0.9),
            ]),
          ),
        ),
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              app5.withOpacity(0.6),
              app.withOpacity(0.2),
              // app3,
              // app5.withOpacity(0.8),
              // app.withOpacity(0.6),
              // app.withOpacity(0.4),
              // app6.withOpacity(0.7),
              // app7.withOpacity(0.9),
            ])),
          ),
          Container(
            height: size.height / 1.4,
            width: size.width,
            decoration: BoxDecoration(
              color: white,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
            ),
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeTeacher(),
                        ));
                  },
                  child: Container(
                    padding: EdgeInsets.all(15),
                    margin: EdgeInsets.all(15),
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.black)),
                    child: Text(
                      'Teacher',
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: black,
                      )),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Home(),
                        ));
                  },
                  child: Container(
                    padding: EdgeInsets.all(15),
                    margin: EdgeInsets.all(15),
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.black)),
                    child: Text(
                      'Student',
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: black,
                      )),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
