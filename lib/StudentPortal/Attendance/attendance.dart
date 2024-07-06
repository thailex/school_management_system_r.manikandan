import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_management_system/colors/color.dart';
import 'package:table_calendar/table_calendar.dart';

class Attendance extends StatefulWidget {
  const Attendance({super.key});

  @override
  State<Attendance> createState() => _AttendanceState();
}

class _AttendanceState extends State<Attendance> {
  bool isPressedAttendance = true;
  bool isPressedHoliday = false;
  List<HolidayList> holidayList = [
    HolidayList(day: 'Saturday', date: '14th, November', festival: 'Diwali'),
    HolidayList(
        day: 'Friday', date: '14th, January', festival: 'Pongal Festival'),
    HolidayList(day: 'Saturday', date: '14th, November', festival: 'Diwali'),
    HolidayList(day: 'Saturday', date: '14th, November', festival: 'Diwali'),
    HolidayList(day: 'Saturday', date: '14th, November', festival: 'Diwali'),
    HolidayList(day: 'Saturday', date: '14th, November', festival: 'Diwali'),
    HolidayList(day: 'Saturday', date: '14th, November', festival: 'Diwali'),
  ];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        leadingWidth: 69,
        title: Row(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  isPressedAttendance = true;
                  isPressedHoliday = false;
                });
              },
              child: Container(
                padding: const EdgeInsets.only(
                    left: 10, right: 10, top: 5, bottom: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color:
                        (isPressedAttendance) ? white : grey.withOpacity(0.3)),
                child: Text(
                  'Attendance',
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  )),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isPressedHoliday = true;
                  isPressedAttendance = false;
                });
              },
              child: Container(
                padding: const EdgeInsets.only(
                    left: 10, right: 10, top: 5, bottom: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: (isPressedHoliday) ? white : grey.withOpacity(0.3)),
                child: Text(
                  'Holiday',
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: black,
                  )),
                ),
              ),
            )
          ],
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
          if (isPressedAttendance) attendance(),
          if (isPressedHoliday) holiday()
        ],
      ),
    ));
  }

  // to show attendance details of an student
  attendance() {
    return Container(
      height: MediaQuery.of(context).size.height / 1.17,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: white,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(25), topRight: Radius.circular(25))),
      child: SingleChildScrollView(
        child: Column(
          children: [
            TableCalendar(
              firstDay: DateTime.utc(2010, 10, 16),
              lastDay: DateTime.utc(2030, 3, 14),
              focusedDay: DateTime.now(),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.only(
                      left: 10, right: 10, top: 25, bottom: 25),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        topLeft: Radius.circular(10)),
                    color: Colors.redAccent,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  alignment: Alignment.centerLeft,
                  width: 300,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          bottomRight: Radius.circular(10),
                          topRight: Radius.circular(10)),
                      border: Border.all(color: Colors.redAccent)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Absent',
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: black,
                        )),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.red.shade50),
                        child: Text(
                          '02',
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                            color: Colors.redAccent,
                          )),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.only(
                      left: 10, right: 10, top: 25, bottom: 25),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        topLeft: Radius.circular(10)),
                    color: Colors.greenAccent,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  alignment: Alignment.centerLeft,
                  width: 300,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          bottomRight: Radius.circular(10),
                          topRight: Radius.circular(10)),
                      border: Border.all(color: Colors.greenAccent)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Festival & Holidays',
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: black,
                        )),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.green.shade50),
                        child: Text(
                          '01',
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                            color: Colors.greenAccent,
                          )),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
  // to show list of holidays

  holiday() {
    return Container(
      height: MediaQuery.of(context).size.height / 1.17,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: white,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(25), topRight: Radius.circular(25))),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TableCalendar(
              firstDay: DateTime.utc(2010, 10, 16),
              lastDay: DateTime.utc(2030, 3, 14),
              focusedDay: DateTime.now(),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text(
                'List of Holiday',
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: black,
                )),
              ),
            ),
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: holidayList.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: const EdgeInsets.only(
                          top: 15, bottom: 15, left: 15, right: 15),
                      margin: const EdgeInsets.only(
                          top: 15, bottom: 15, left: 15, right: 15),
                      decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: black.withOpacity(0.2)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Diwali',
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              color: black.withOpacity(0.6),
                            )),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '14th, November',
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: black.withOpacity(0.6),
                                )),
                              ),
                              Text(
                                'Saturday',
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: black.withOpacity(0.6),
                                )),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
// to show list of holidays

class HolidayList {
  String festival;
  String date;
  String day;
  HolidayList({required this.day, required this.date, required this.festival});
}
