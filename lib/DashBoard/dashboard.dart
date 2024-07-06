import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_management_system/StudentPortal/AskDoubts/askdoubt.dart';
import 'package:school_management_system/Authentication/login.dart';
import 'package:school_management_system/StudentPortal/ChangePassword/changepassword.dart';
import 'package:school_management_system/StudentPortal/Events/eventsprograms.dart';
import 'package:school_management_system/HomePage/homepagestudent.dart';
import 'package:school_management_system/HomePage/homepageteacher.dart';
import 'package:school_management_system/StudentPortal/HomeWork/homework.dart';
import 'package:school_management_system/StudentPortal/MultiMedia/multimedia.dart';
import 'package:school_management_system/StudentPortal/SchoolGallery/schoolgallery.dart';
import 'package:school_management_system/StudentPortal/Result/result.dart';
import 'package:school_management_system/StudentPortal/LeaveApplication/leaveapplication.dart';
import 'package:school_management_system/StudentPortal/Quiz/quiz.dart';
import 'package:school_management_system/TeacherPortal/AttendanceDetails/teacherattendance.dart';
import 'package:school_management_system/colors/color.dart';
import 'package:school_management_system/StudentPortal/StudentProfile/editprofile.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  // to show list of dashBoard
  List<Dashboard> dashBoard = [
    Dashboard(image: 'assets/dashBoardPlayQuiz.svg', name: 'Play Quiz'),
    Dashboard(image: 'assets/dashBoardAssignment.svg', name: 'Assignment'),
    Dashboard(
        image: 'assets/dashBoardSchoolHoliday.svg', name: 'School Holiday'),
    Dashboard(image: 'assets/dashBoardTimeTable.svg', name: 'Time Table'),
    Dashboard(image: 'assets/dashBoardResult.svg', name: 'Result'),
    Dashboard(image: 'assets/dashBoardDataSheet.svg', name: 'Data Sheet'),
    Dashboard(image: 'assets/dashBoardAskDoubts.svg', name: 'Ask Doubts'),
    Dashboard(
        image: 'assets/dashBoardSchoolGallery.svg', name: 'School Gallery'),
    Dashboard(
        image: 'assets/dashBoardLeaveApplication.svg',
        name: 'Leave Application'),
    Dashboard(
        image: 'assets/dashBoardChangePassword.svg', name: 'Change Password'),
    Dashboard(image: 'assets/dashBoardEvents.svg', name: 'Events'),
    Dashboard(image: 'assets/dashBoardLogout.svg', name: 'Logout'),
  ];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      // to show dashBoard
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
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const EditProfileStudent(),
                    ));
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: ListTile(
                  isThreeLine: true,
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Class XI - B | Roll no: 04',
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                          color: black,
                        )),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        padding: const EdgeInsets.only(
                            left: 8, right: 8, top: 2, bottom: 2),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white),
                        child: Text(
                          '2021 - 2022',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                            color: black,
                          )),
                        ),
                      )
                    ],
                  ),
                  title: Text(
                    'Hi Mari Selvam!',
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      color: black,
                    )),
                  ),
                  trailing: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: white, width: 2),
                        shape: BoxShape.circle),
                    child: CircleAvatar(
                      radius: 40,
                      backgroundColor: grey,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: size.height / 1.3,
            width: size.width,
            decoration: BoxDecoration(
                color: white,
                image: const DecorationImage(
                    image: AssetImage("assets/bg.jpg"),
                    fit: BoxFit.fill,
                    opacity: 0.5),
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25))),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.1,
                mainAxisSpacing: 10,
              ),
              itemCount: dashBoard.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    (index == 0)
                        ? Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Quiz(),
                            ))
                        : (index == 4)
                            ? Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Grade(),
                                ))
                            : (index == 7)
                                ? Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const SchoolGallery(),
                                    ))
                                : (index == 10)
                                    ? Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => const Event(),
                                        ))
                                    : (index == 2)
                                        ? Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  const TeacherAttendance(),
                                            ))
                                        : (index == 9)
                                            ? Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      const ChangePassword(),
                                                ))
                                            : (index == 8)
                                                ? Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          const LeaveApplication(),
                                                    ))
                                                : (index == 6)
                                                    ? Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                          builder: (context) =>
                                                              const AskDoubt(),
                                                        ))
                                                    : (index == 5)
                                                        ? Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                              builder: (context) =>
                                                                  const HomeTeacher(),
                                                            ))
                                                        : (index == 1)
                                                            ? Navigator.push(
                                                                context,
                                                                MaterialPageRoute(
                                                                  builder:
                                                                      (context) =>
                                                                          const HomeWork(),
                                                                ))
                                                            : (index == 3)
                                                                ? Navigator.push(
                                                                    context,
                                                                    MaterialPageRoute(
                                                                      builder:
                                                                          (context) =>
                                                                              const MultiMedia(),
                                                                    ))
                                                                : Navigator.push(
                                                                    context,
                                                                    MaterialPageRoute(
                                                                      builder:
                                                                          (context) =>
                                                                              const Home(),
                                                                    ));
                  },
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: appColor8,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SvgPicture.asset(
                          dashBoard[index].image,
                          color: app,
                        ), // Adjust size as needed
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Text(
                            dashBoard[index].name,
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  // to show bottomSheet for logout
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
// to show data of dashBoard

class Dashboard {
  String image;
  String name;
  Dashboard({required this.image, required this.name});
}
