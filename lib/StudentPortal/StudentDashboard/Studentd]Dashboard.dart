import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_management_system/StudentPortal/AskDoubts/askdoubt.dart';
import 'package:school_management_system/StudentPortal/Assignment/assignment.dart';
import 'package:school_management_system/Authentication/login.dart';
import 'package:school_management_system/StudentPortal/ChangePassword/changepassword.dart';
import 'package:school_management_system/StudentPortal/Events/eventsprograms.dart';
import 'package:school_management_system/StudentPortal/HomeWork/homework.dart';
import 'package:school_management_system/StudentPortal/LeaveApplication/leaveapplication.dart';
import 'package:school_management_system/StudentPortal/MultiMedia/multimedia.dart';
import 'package:school_management_system/StudentPortal/Quiz/quiz.dart';
import 'package:school_management_system/StudentPortal/ReportCard/reportcard.dart';
import 'package:school_management_system/StudentPortal/SchoolGallery/schoolgallery.dart';
import 'package:school_management_system/TeacherPortal/AttendanceDetails/teacherattendance.dart';
import 'package:school_management_system/StudentPortal/TimeTable/timetable.dart';
import 'package:school_management_system/colors/color.dart';
import 'package:school_management_system/colors/g.dart';
import 'package:slide_countdown/slide_countdown.dart';

class DashBoard2 extends StatefulWidget {
  const DashBoard2({super.key});

  @override
  State<DashBoard2> createState() => _DashBoard2State();
}

class _DashBoard2State extends State<DashBoard2> {
  List<Events> events = [
    Events(
        time: '06 Jan 21, 09:00 AM',
        description:
            'A Sleepover is a great treat for kids.Many school uses such an event as the culminating activity of the School year ',
        event: 'Sleepover Night'),
    Events(
        time: '08 Feb 21, 09:00 AM',
        description:
            'A Sleepover is a great treat for kids.Many school uses such an event as the culminating activity of the School year ',
        event: 'Fishing Tournament'),
    Events(
        time: '09 Mar 21, 09:00 AM',
        description:
            'A Sleepover is a great treat for kids.Many school uses such an event as the culminating activity of the School year ',
        event: 'Rhyme Time:A Night of Poetry'),
  ];
  List<HomeWorks> homeWorks = [
    HomeWorks(
        image: '',
        description:
            'Draw and label respiratory system of a female crocodile.To be submitted in the next class',
        time: '09:00 AM - 09:45 AM',
        subject: 'Biology'),
    HomeWorks(
        image: '',
        description:
            'Draw and label respiratory system of a female crocodile.To be submitted in the next class',
        time: '09:00 AM - 09:45 AM',
        subject: 'Biology'),
    HomeWorks(
        image: '',
        description:
            'Draw and label respiratory system of a female crocodile.To be submitted in the next class',
        time: '09:00 AM - 09:45 AM',
        subject: 'Biology'),
    HomeWorks(
        image: '',
        description:
            'Draw and label respiratory system of a female crocodile.To be submitted in the next class',
        time: '09:00 AM - 09:45 AM',
        subject: 'Biology'),
  ];
  Duration defaultDuration = const Duration(days: 2, hours: 2, minutes: 30);
  EdgeInsets defaultPadding =
      const EdgeInsets.symmetric(horizontal: 9, vertical: 5);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          // to show drawer
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                DrawerHeader(
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 45,
                        backgroundColor: grey,
                      ),
                      Text(
                        'Mari Selvam!!!',
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: black,
                        )),
                      ),
                      Text(
                        'Class XI - B | Roll no : 04',
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 10,
                          fontWeight: FontWeight.w300,
                          color: black,
                        )),
                      ),
                    ],
                  ),
                ),
                ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Quiz(),
                        ));
                  },
                  leading: CustomGradient(
                    child: SvgPicture.asset(
                      'assets/dashBoardPlayQuiz.svg',
                      height: 20,
                    ),
                  ),
                  title: Text(
                    'Play Quiz',
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: black,
                    )),
                  ),
                ),
                ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Assignment()));
                  },
                  leading: CustomGradient(
                    child: SvgPicture.asset(
                      'assets/dashBoardAssignment.svg',
                      height: 20,
                    ),
                  ),
                  title: Text(
                    'Assignment',
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: black,
                    )),
                  ),
                ),
                ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TimeTable()));
                  },
                  leading: CustomGradient(
                    child: SvgPicture.asset(
                      'assets/dashBoardTimeTable.svg',
                      height: 20,
                    ),
                  ),
                  title: Text(
                    'Time Table',
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: black,
                    )),
                  ),
                ),
                ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ReportCard()));
                  },
                  leading: CustomGradient(
                    child: SvgPicture.asset(
                      'assets/dashBoardResult.svg',
                      height: 20,
                    ),
                  ),
                  title: Text(
                    'Result',
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: black,
                    )),
                  ),
                ),
                ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MultiMedia()));
                  },
                  leading: CustomGradient(
                    child: SvgPicture.asset(
                      'assets/dashBoardResult.svg',
                      height: 20,
                    ),
                  ),
                  title: Text(
                    'MultiMedia',
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: black,
                    )),
                  ),
                ),
                ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AskDoubt()));
                  },
                  leading: CustomGradient(
                    child: SvgPicture.asset(
                      'assets/dashBoardAskDoubts.svg',
                      height: 20,
                    ),
                  ),
                  title: Text(
                    'Ask Doubts',
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: black,
                    )),
                  ),
                ),
                ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SchoolGallery()));
                  },
                  leading: CustomGradient(
                    child: SvgPicture.asset(
                      'assets/dashBoardSchoolGallery.svg',
                      height: 20,
                    ),
                  ),
                  title: Text(
                    'School Gallery',
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: black,
                    )),
                  ),
                ),
                ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LeaveApplication()));
                  },
                  leading: CustomGradient(
                    child: SvgPicture.asset(
                      'assets/dashBoardLeaveApplication.svg',
                      height: 20,
                    ),
                  ),
                  title: Text(
                    'Leave Application',
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: black,
                    )),
                  ),
                ),
                ListTile(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Event()));
                  },
                  leading: CustomGradient(
                    child: SvgPicture.asset(
                      'assets/dashBoardEvents.svg',
                      height: 20,
                    ),
                  ),
                  title: Text(
                    'Events',
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: black,
                    )),
                  ),
                ),
                ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TeacherAttendance()));
                  },
                  leading: CustomGradient(
                    child: SvgPicture.asset(
                      'assets/dashBoardTimeTable.svg',
                      height: 20,
                    ),
                  ),
                  title: Text(
                    'Attendance',
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: black,
                    )),
                  ),
                ),
                ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ChangePassword()));
                  },
                  leading: CustomGradient(
                    child: SvgPicture.asset(
                      'assets/dashBoardChangePassword.svg',
                      height: 20,
                    ),
                  ),
                  title: Text(
                    'Change Password',
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: black,
                    )),
                  ),
                ),
                ListTile(
                  onTap: () {
                    bottomSheet();
                  },
                  leading: SvgPicture.asset(
                    'assets/dashBoardLogout.svg',
                    color: Colors.red,
                    height: 20,
                  ),
                  title: Text(
                    'Logout',
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: black,
                    )),
                  ),
                ),
              ],
            ),
          ),
          appBar: AppBar(
            leading: Builder(
              builder: (context) => Padding(
                padding: const EdgeInsets.only(top: 25.0),
                child: IconButton(
                  icon: const Icon(Icons.menu_rounded),
                  onPressed: () => Scaffold.of(context).openDrawer(),
                ),
              ),
            ),
            title: Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Text(
                'Hi Mari !!!',
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: black,
                )),
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(top: 25.0),
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.notifications_outlined)),
              )
            ],
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
          //to show dashBoard
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
                padding: const EdgeInsets.all(10),
                height: size.height / 1.3,
                width: size.width,
                decoration: BoxDecoration(
                  color: white,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          padding: const EdgeInsets.all(15),
                          margin: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            // boxShadow: [
                            //   BoxShadow(
                            //       color: Colors.grey.shade600,
                            //       spreadRadius: 1,
                            //       blurRadius: 15)
                            // ],
                            borderRadius: BorderRadius.circular(15),
                            gradient: LinearGradient(colors: [
                              app5.withOpacity(0.1),
                              app.withOpacity(0.1),
                              // app3,
                              // app5.withOpacity(0.8),
                              // app.withOpacity(0.6),
                              // app.withOpacity(0.4),
                              // app6.withOpacity(0.7),
                              // app7.withOpacity(0.9),
                            ]),
                          ),
                          child: Column(
                            children: [
                              Text(
                                'Are you ready for exams ?',
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
                              SlideCountdownSeparated(
                                decoration: BoxDecoration(
                                  color:
                                      Colors.white, // Default background color
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                separatorStyle:
                                    const TextStyle(color: Colors.transparent),
                                style: TextStyle(
                                    color: black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                                padding: const EdgeInsets.only(
                                    left: 15, right: 15, top: 5, bottom: 5),
                                separatorPadding: defaultPadding,
                                durationTitle: const DurationTitle(
                                    days: 'Days',
                                    hours: 'Hours',
                                    minutes: 'Minutes',
                                    seconds: 'Seconds'),
                                duration: const Duration(days: 2),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 0.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      'Days',
                                      style: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                        decoration: TextDecoration.none,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w600,
                                        color: black,
                                      )),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 0.0),
                                      child: Text(
                                        'Hours',
                                        style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontSize: 13,
                                          fontWeight: FontWeight.w600,
                                          color: black,
                                        )),
                                      ),
                                    ),
                                    Text(
                                      'Mins',
                                      style: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                        decoration: TextDecoration.none,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w600,
                                        color: black,
                                      )),
                                    ),
                                    Text(
                                      'Secs',
                                      style: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                        decoration: TextDecoration.none,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w600,
                                        color: black,
                                      )),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )),
                      const SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text(
                          'Events & Program',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: black,
                          )),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 10.0),
                        margin: const EdgeInsets.only(
                            left: 10, right: 10, top: 10, bottom: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          gradient: LinearGradient(colors: [
                            app5.withOpacity(0.1),
                            app.withOpacity(0.1),
                            // app3,
                            // app5.withOpacity(0.8),
                            // app.withOpacity(0.6),
                            // app.withOpacity(0.4),
                            // app6.withOpacity(0.7),
                            // app7.withOpacity(0.9),
                          ]),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Text(
                                'Sleepover Night',
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: black,
                                )),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 15.0, top: 2),
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.access_time,
                                    size: 15,
                                    color: Colors.black,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    '06 Jan 21, 9:00 AM',
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.red,
                                    )),
                                  ),
                                ],
                              ),
                            ),
                            ListTile(
                              leading: Container(
                                height: 100,
                                width: 60,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: grey),
                                child: const Text(''),
                              ),
                              isThreeLine: true,
                              subtitle: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 3.0),
                                    child: Text(
                                      'A Sleepover is a great treat for kids.Many school uses such an event as the culminating activity of the School year ',
                                      style: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                        decoration: TextDecoration.none,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black,
                                      )),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Home Work',
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: black,
                              )),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const HomeWork(),
                                    ));
                              },
                              child: Text(
                                'View All',
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                  decoration: TextDecoration.none,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.green,
                                )),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: size.width,
                        margin: const EdgeInsets.only(right: 10),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: homeWorks
                                .map((e) => Container(
                                      width: 230,
                                      margin: const EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        // boxShadow: [
                                        //   BoxShadow(
                                        //       color: Colors.grey.shade600,
                                        //       spreadRadius: 1,
                                        //       blurRadius: 15)
                                        // ],
                                        borderRadius: BorderRadius.circular(15),
                                        gradient: LinearGradient(colors: [
                                          app5.withOpacity(0.1),
                                          app.withOpacity(0.1),
                                          // app3,
                                          // app5.withOpacity(0.8),
                                          // app.withOpacity(0.6),
                                          // app.withOpacity(0.4),
                                          // app6.withOpacity(0.7),
                                          // app7.withOpacity(0.9),
                                        ]),
                                      ),
                                      child: Column(
                                        children: [
                                          ListTile(
                                            contentPadding:
                                                const EdgeInsets.only(
                                                    left: 15,
                                                    right: 0,
                                                    bottom: 5),
                                            leading: Container(
                                              height: 50,
                                              width: 50,
                                              decoration: BoxDecoration(
                                                  color: Colors.grey,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          15)),
                                            ),
                                            title: Text(
                                              'Biology',
                                              style: GoogleFonts.poppins(
                                                  textStyle: TextStyle(
                                                decoration: TextDecoration.none,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w600,
                                                color: black,
                                              )),
                                            ),
                                            subtitle: Row(
                                              children: [
                                                const Icon(
                                                  Icons.access_time,
                                                  size: 16,
                                                ),
                                                const SizedBox(
                                                  width: 5,
                                                ),
                                                Text(
                                                  '09:00 AM - 09:45 AM',
                                                  style: GoogleFonts.poppins(
                                                      textStyle:
                                                          const TextStyle(
                                                    decoration:
                                                        TextDecoration.none,
                                                    fontSize: 10,
                                                    fontWeight: FontWeight.w600,
                                                    color: Colors.red,
                                                  )),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 20.0,
                                                right: 15,
                                                bottom: 10),
                                            child: Text(
                                              'Draw and label respiratory system of a female crocodile.To be submitted in the next class',
                                              style: GoogleFonts.poppins(
                                                  textStyle: const TextStyle(
                                                decoration: TextDecoration.none,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black,
                                              )),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ))
                                .toList(),
                          ),
                        ),
                      ),

                      // Padding(
                      //   padding: const EdgeInsets.only(left: 15.0),
                      //   child: Text(
                      //     'Events & Programs',
                      //     style: GoogleFonts.poppins(
                      //         textStyle: TextStyle(
                      //       decoration: TextDecoration.none,
                      //       fontSize: 15,
                      //       fontWeight: FontWeight.w600,
                      //       color: black,
                      //     )),
                      //   ),
                      // ),
                      // const SizedBox(
                      //   height: 10,
                      // ),
                      // Stack(
                      //   children: [
                      //     Positioned(
                      //       child: Padding(
                      //         padding: const EdgeInsets.only(top: 160.0),
                      //         child: SvgPicture.asset(
                      //           'assets/gradeBottomImage.svg',
                      //           fit: BoxFit.cover,
                      //         ),
                      //       ),
                      //     ),
                      //     Padding(
                      //       padding: const EdgeInsets.only(left: 5.0, right: 20),
                      //       child: SingleChildScrollView(
                      //         scrollDirection: Axis.horizontal,
                      //         child: Row(
                      //           children: homeWorks
                      //               .map((e) => Container(
                      //                     width: 230,
                      //                     margin: const EdgeInsets.all(10),
                      //                     decoration: BoxDecoration(
                      //                       // boxShadow: [
                      //                       //   BoxShadow(
                      //                       //       color: Colors.grey.shade600,
                      //                       //       spreadRadius: 1,
                      //                       //       blurRadius: 15)
                      //                       // ],
                      //                       borderRadius:
                      //                           BorderRadius.circular(15),
                      //                       gradient: LinearGradient(colors: [
                      //                         app5.withOpacity(0.2),
                      //                         app.withOpacity(0.2),
                      //                         // app3,
                      //                         // app5.withOpacity(0.8),
                      //                         // app.withOpacity(0.6),
                      //                         // app.withOpacity(0.4),
                      //                         // app6.withOpacity(0.7),
                      //                         // app7.withOpacity(0.9),
                      //                       ]),
                      //                     ),
                      //                     child: Column(
                      //                       children: [
                      //                         ListTile(
                      //                           contentPadding:
                      //                               const EdgeInsets.only(
                      //                                   left: 15,
                      //                                   right: 0,
                      //                                   bottom: 5),
                      //                           leading: Container(
                      //                             height: 50,
                      //                             width: 50,
                      //                             decoration: BoxDecoration(
                      //                                 color: Colors.grey,
                      //                                 borderRadius:
                      //                                     BorderRadius.circular(
                      //                                         15)),
                      //                           ),
                      //                           title: Text(
                      //                             'Sleepover Night',
                      //                             style: GoogleFonts.poppins(
                      //                                 textStyle: TextStyle(
                      //                               decoration:
                      //                                   TextDecoration.none,
                      //                               fontSize: 15,
                      //                               fontWeight: FontWeight.w600,
                      //                               color: black,
                      //                             )),
                      //                           ),
                      //                           subtitle: Row(
                      //                             children: [
                      //                               const Icon(
                      //                                 Icons.access_time,
                      //                                 size: 16,
                      //                               ),
                      //                               const SizedBox(
                      //                                 width: 5,
                      //                               ),
                      //                               Text(
                      //                                 '06 Jan 21,09:00 AM',
                      //                                 style: GoogleFonts.poppins(
                      //                                     textStyle:
                      //                                         const TextStyle(
                      //                                   decoration:
                      //                                       TextDecoration.none,
                      //                                   fontSize: 10,
                      //                                   fontWeight:
                      //                                       FontWeight.w600,
                      //                                   color: Colors.red,
                      //                                 )),
                      //                               ),
                      //                             ],
                      //                           ),
                      //                         ),
                      //                         Padding(
                      //                           padding: const EdgeInsets.only(
                      //                               left: 20.0,
                      //                               right: 15,
                      //                               bottom: 10),
                      //                           child: Text(
                      //                             'Draw and label respiratory system of a female crocodile.To be submitted in the next class',
                      //                             style: GoogleFonts.poppins(
                      //                                 textStyle: TextStyle(
                      //                               decoration:
                      //                                   TextDecoration.none,
                      //                               fontSize: 12,
                      //                               fontWeight: FontWeight.w600,
                      //                               color: grey,
                      //                             )),
                      //                           ),
                      //                         ),
                      //                       ],
                      //                     ),
                      //                   ))
                      //               .toList(),
                      //         ),
                      //       ),
                      //     ),
                      //   ],
                      // ),

                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      //   children: [
                      //     Container(
                      //       padding: const EdgeInsets.all(20),
                      //       decoration: BoxDecoration(
                      //           borderRadius: BorderRadius.circular(15),
                      //           // gradient: LinearGradient(colors: [
                      //           //   // const Color(0xff662D8C).withOpacity(0.5),
                      //           //   // const Color(0xffED1E79).withOpacity(0.5),
                      //           //   // app3,
                      //           //   // app5.withOpacity(0.8),
                      //           //   // app.withOpacity(0.6),
                      //           //   app.withOpacity(0.4),
                      //           //   app6.withOpacity(0.7),
                      //           //   // app7.withOpacity(0.9),
                      //           // ]),
                      //           color: white,
                      //           border:
                      //               Border.all(color: black.withOpacity(0.2))),
                      //       child: Column(
                      //         children: [
                      //           Text(
                      //             'My Scheduled',
                      //             style: GoogleFonts.poppins(
                      //                 textStyle: TextStyle(
                      //               decoration: TextDecoration.none,
                      //               fontSize: 15,
                      //               fontWeight: FontWeight.w600,
                      //               color: black,
                      //             )),
                      //           ),
                      //           SvgPicture.asset(
                      //             'assets/report.svg',
                      //             height: 120,
                      //           )
                      //         ],
                      //       ),
                      //     ),
                      //     Container(
                      //       padding: const EdgeInsets.all(20),
                      //       decoration: BoxDecoration(
                      //           borderRadius: BorderRadius.circular(15),
                      //           // gradient: LinearGradient(colors: [
                      //           //   // const Color(0xffEE9CA7).withOpacity(0.5),
                      //           //   // const Color(0xffFFDDE1).withOpacity(0.5),
                      //           //   // app3,
                      //           //   // app5.withOpacity(0.8),
                      //           //   // app.withOpacity(0.6),
                      //           //   app.withOpacity(0.4),
                      //           //   app6.withOpacity(0.7),
                      //           //   // app7.withOpacity(0.9),
                      //           // ]),
                      //           color: white,
                      //           border:
                      //               Border.all(color: black.withOpacity(0.2))),
                      //       child: Column(
                      //         children: [
                      //           Text(
                      //             'My Scheduled',
                      //             style: GoogleFonts.poppins(
                      //                 textStyle: TextStyle(
                      //               decoration: TextDecoration.none,
                      //               fontSize: 15,
                      //               fontWeight: FontWeight.w600,
                      //               color: black,
                      //             )),
                      //           ),
                      //           SvgPicture.asset(
                      //             'assets/report.svg',
                      //             height: 120,
                      //           )
                      //         ],
                      //       ),
                      //     ),
                      //   ],
                      // ),
                      // const SizedBox(
                      //   height: 20,
                      // ),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      //   children: [
                      //     Container(
                      //       padding: const EdgeInsets.all(20),
                      //       decoration: BoxDecoration(
                      //           borderRadius: BorderRadius.circular(15),
                      //           // gradient: LinearGradient(colors: [
                      //           //   // const Color(0xffD4145A).withOpacity(0.5),
                      //           //   // const Color(0xffFBB03B).withOpacity(0.5),
                      //           //
                      //           //   // app3,
                      //           //   // app5.withOpacity(0.8),
                      //           //   // app.withOpacity(0.6),
                      //           //   app.withOpacity(0.4),
                      //           //   app6.withOpacity(0.7),
                      //           //   // app7.withOpacity(0.9),
                      //           // ]),
                      //           color: white,
                      //           border:
                      //               Border.all(color: black.withOpacity(0.2))),
                      //       child: Column(
                      //         children: [
                      //           Text(
                      //             'My Scheduled',
                      //             style: GoogleFonts.poppins(
                      //                 textStyle: TextStyle(
                      //               decoration: TextDecoration.none,
                      //               fontSize: 15,
                      //               fontWeight: FontWeight.w600,
                      //               color: black,
                      //             )),
                      //           ),
                      //           SvgPicture.asset(
                      //             'assets/report.svg',
                      //             height: 120,
                      //           )
                      //         ],
                      //       ),
                      //     ),
                      //     Container(
                      //       padding: const EdgeInsets.all(20),
                      //       decoration: BoxDecoration(
                      //           borderRadius: BorderRadius.circular(15),
                      //           // gradient: LinearGradient(colors: [
                      //           //   // const Color(0xff614385).withOpacity(0.5),
                      //           //   // const Color(0xff516395).withOpacity(0.5),
                      //           //
                      //           //   // app3,
                      //           //   // app5.withOpacity(0.8),
                      //           //   // app.withOpacity(0.6),
                      //           //   app.withOpacity(0.4),
                      //           //   app6.withOpacity(0.7),
                      //           //   // app7.withOpacity(0.9),
                      //           // ]),
                      //           color: white,
                      //           border:
                      //               Border.all(color: black.withOpacity(0.2))),
                      //       child: Column(
                      //         children: [
                      //           Text(
                      //             'My Schged',
                      //             style: GoogleFonts.poppins(
                      //                 textStyle: TextStyle(
                      //               decoration: TextDecoration.none,
                      //               fontSize: 15,
                      //               fontWeight: FontWeight.w600,
                      //               color: black,
                      //             )),
                      //           ),
                      //           SvgPicture.asset(
                      //             'assets/report.svg',
                      //             height: 120,
                      //           )
                      //         ],
                      //       ),
                      //     ),
                      //   ],
                      // ),
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }

  // to show bottomSheet for Logout
  bottomSheet() {
    return showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(builder: (context, setState) {
          return SingleChildScrollView(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Text(
                  'Logout',
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.red,
                  )),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                width: 350,
                child: Divider(
                  height: 30,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30.0),
                child: Text(
                  "Are you sure you want to logout? ",
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                  )),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                  width: 350,
                  child: Divider(
                    height: 20,
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.only(
                          left: 30, right: 30, top: 15, bottom: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.red.shade50),
                      child: Text(
                        'Cancel',
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                          fontSize: 13,
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
                            builder: (context) => const Login(),
                          ));
                    },
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.only(
                          left: 30, right: 30, top: 15, bottom: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        gradient: LinearGradient(colors: [
                          app5.withOpacity(0.6),
                          app.withOpacity(0.2),
                        ]),
                      ),
                      child: Text(
                        'Yes,Logout',
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: black,
                        )),
                      ),
                    ),
                  )
                ],
              )
            ],
          ));
        });
      },
    );
  }
}

//to show HomeWorks data
class HomeWorks {
  String subject;
  String image;
  String time;
  String description;
  HomeWorks(
      {required this.image,
      required this.description,
      required this.time,
      required this.subject});
}
