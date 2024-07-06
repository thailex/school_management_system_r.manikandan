import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_management_system/colors/color.dart';

class TimeTable extends StatefulWidget {
  const TimeTable({super.key});

  @override
  State<TimeTable> createState() => _TimeTableState();
}

class _TimeTableState extends State<TimeTable> {
  List<Timetable> timeTable = [
    Timetable(
        subject: 'Computer Science',
        time: '9:00 am - 9:45 am',
        period: 'Period 1',
        teacherName: 'Cherish James'),
    Timetable(
        subject: 'Mathematics',
        time: '9:45 am - 10:30 am',
        period: 'Period 2',
        teacherName: 'Cherish James'),
    Timetable(
        subject: 'Break',
        time: '10:30 am - 10:45 am',
        period: 'Break',
        teacherName: 'Cherish James'),
    Timetable(
        subject: 'English',
        time: '10:45 am - 11:30 am',
        period: 'Period 3',
        teacherName: 'Cherish James'),
    Timetable(
        subject: 'Science',
        time: '11:30 am - 12:15 pm',
        period: 'Period 4',
        teacherName: 'Cherish James'),
    Timetable(
        subject: 'Lunch Break',
        time: '12:15 pm - 1:00 pm',
        period: 'Lunch Break',
        teacherName: 'Cherish James'),
    Timetable(
        subject: 'Social Study',
        time: '1:00 pm - 1:45 pm',
        period: 'Period 5',
        teacherName: 'Cherish James'),
    Timetable(
        subject: 'Hindi',
        time: '1:45 pm - 2:30 pm',
        period: 'Period 6',
        teacherName: 'Cherish James'),
  ];
  bool mon = true;
  bool tue = false;
  bool wed = false;
  bool thur = false;
  bool fri = false;
  bool sat = false;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        leadingWidth: 69,
        title: Text(
          'Time Table',
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
      // to show timetable of an student
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
            height: size.height / 1.17,
            width: size.width,
            decoration: BoxDecoration(
                color: white,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25))),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            mon = !mon;
                            tue = false;
                            wed = false;
                            thur = false;
                            fri = false;
                            sat = false;
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.only(
                              left: 12, right: 12, top: 2, bottom: 2),
                          margin: const EdgeInsets.only(
                              left: 15, top: 15, bottom: 15, right: 5),
                          decoration: BoxDecoration(
                              gradient: (mon == true)
                                  ? LinearGradient(colors: [
                                      app5.withOpacity(0.6),
                                      app.withOpacity(0.2),
                                      // app.withOpacity(0.4),
                                      // app.withOpacity(0.6),
                                      // app3,
                                      // app5.withOpacity(0.8),
                                      // app6.withOpacity(0.7),
                                      // app7.withOpacity(0.9),
                                    ])
                                  : LinearGradient(colors: [
                                      white, white
                                      // app6.withOpacity(0.7),
                                      // app7.withOpacity(0.9),
                                    ]),
                              border: Border.all(color: black),
                              borderRadius: BorderRadius.circular(25)),
                          child: Text(
                            'Mon',
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: black,
                            )),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            tue = !tue;
                            mon = false;
                            wed = false;
                            thur = false;
                            fri = false;
                            sat = false;
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.only(
                              left: 12, right: 12, top: 2, bottom: 2),
                          margin: const EdgeInsets.only(
                              top: 15, bottom: 15, right: 5),
                          decoration: BoxDecoration(
                              gradient: (tue == true)
                                  ? LinearGradient(colors: [
                                      app5.withOpacity(0.6),
                                      app.withOpacity(0.2),
                                      // app3,
                                      // app5.withOpacity(0.8),
                                      // app.withOpacity(0.6),
                                      // app.withOpacity(0.4),
                                      // app6.withOpacity(0.7),
                                      // app7.withOpacity(0.9),
                                    ])
                                  : LinearGradient(colors: [
                                      white, white
                                      // app6.withOpacity(0.7),
                                      // app7.withOpacity(0.9),
                                    ]),
                              border: Border.all(color: black),
                              borderRadius: BorderRadius.circular(25)),
                          child: Text(
                            'Tue',
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: black,
                            )),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            wed = !wed;
                            mon = false;
                            tue = false;
                            thur = false;
                            fri = false;
                            sat = false;
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.only(
                              left: 12, right: 12, top: 2, bottom: 2),
                          margin: const EdgeInsets.only(
                              top: 15, bottom: 15, right: 5),
                          decoration: BoxDecoration(
                              gradient: (wed == true)
                                  ? LinearGradient(colors: [
                                      app5.withOpacity(0.6),
                                      app.withOpacity(0.2),
                                      // app3,
                                      // app5.withOpacity(0.8),
                                      // app.withOpacity(0.6),
                                      // app.withOpacity(0.4),
                                      // app6.withOpacity(0.7),
                                      // app7.withOpacity(0.9),
                                    ])
                                  : LinearGradient(colors: [
                                      white, white
                                      // app6.withOpacity(0.7),
                                      // app7.withOpacity(0.9),
                                    ]),
                              border: Border.all(color: black),
                              borderRadius: BorderRadius.circular(25)),
                          child: Text(
                            'Wed',
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: black,
                            )),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            thur = !thur;
                            mon = false;
                            tue = false;
                            wed = false;
                            fri = false;
                            sat = false;
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.only(
                              left: 12, right: 12, top: 2, bottom: 2),
                          margin: const EdgeInsets.only(
                              top: 15, bottom: 15, right: 5),
                          decoration: BoxDecoration(
                              gradient: (thur == true)
                                  ? LinearGradient(colors: [
                                      app5.withOpacity(0.6),
                                      app.withOpacity(0.2),
                                      // app3,
                                      // app5.withOpacity(0.8),
                                      // app.withOpacity(0.6),
                                      // app.withOpacity(0.4),
                                      // app6.withOpacity(0.7),
                                      // app7.withOpacity(0.9),
                                    ])
                                  : LinearGradient(colors: [
                                      white, white
                                      // app6.withOpacity(0.7),
                                      // app7.withOpacity(0.9),
                                    ]),
                              border: Border.all(color: black),
                              borderRadius: BorderRadius.circular(25)),
                          child: Text(
                            'Thur',
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: black,
                            )),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            fri = !fri;
                            mon = false;
                            tue = false;
                            wed = false;
                            thur = false;
                            sat = false;
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.only(
                              left: 12, right: 12, top: 2, bottom: 2),
                          margin: const EdgeInsets.only(
                              top: 15, bottom: 15, right: 5),
                          decoration: BoxDecoration(
                              gradient: (fri == true)
                                  ? LinearGradient(colors: [
                                      app5.withOpacity(0.6),
                                      app.withOpacity(0.2),
                                      // app3,
                                      // app5.withOpacity(0.8),
                                      // app.withOpacity(0.6),
                                      // app.withOpacity(0.4),
                                      // app6.withOpacity(0.7),
                                      // app7.withOpacity(0.9),
                                    ])
                                  : LinearGradient(colors: [
                                      white, white
                                      // app6.withOpacity(0.7),
                                      // app7.withOpacity(0.9),
                                    ]),
                              border: Border.all(color: black),
                              borderRadius: BorderRadius.circular(25)),
                          child: Text(
                            'Fri',
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: black,
                            )),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            sat = !sat;
                            mon = false;
                            tue = false;
                            wed = false;
                            thur = false;
                            fri = false;
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.only(
                              left: 12, right: 12, top: 2, bottom: 2),
                          margin: const EdgeInsets.only(
                              top: 15, bottom: 15, right: 5),
                          decoration: BoxDecoration(
                              gradient: (sat == true)
                                  ? LinearGradient(colors: [
                                      app5.withOpacity(0.6),
                                      app.withOpacity(0.2),
                                      // app3,
                                      // app5.withOpacity(0.8),
                                      // app.withOpacity(0.6),
                                      // app.withOpacity(0.4),
                                      // app6.withOpacity(0.7),
                                      // app7.withOpacity(0.9),
                                    ])
                                  : LinearGradient(colors: [
                                      white, white
                                      // app6.withOpacity(0.7),
                                      // app7.withOpacity(0.9),
                                    ]),
                              border: Border.all(color: black),
                              borderRadius: BorderRadius.circular(25)),
                          child: Text(
                            'Sat',
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: black,
                            )),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height /
                        timeTable.length *
                        timeTable.length *
                        1.50,
                    child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: timeTable.length,
                      itemBuilder: (context, index) {
                        return Container(
                          padding: const EdgeInsets.all(15),
                          margin: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(color: black)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                timeTable[index].subject,
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: black,
                                )),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                timeTable[index].time,
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: black.withOpacity(0.4),
                                )),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Divider(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    timeTable[index].teacherName,
                                    style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                      color: black.withOpacity(0.4),
                                    )),
                                  ),
                                  Text(
                                    timeTable[index].period,
                                    style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                      color: black,
                                    )),
                                  ),
                                ],
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
// to show data of timetable of an student

class Timetable {
  String subject;
  String time;
  String teacherName;
  String period;
  Timetable(
      {required this.subject,
      required this.time,
      required this.period,
      required this.teacherName});
}
