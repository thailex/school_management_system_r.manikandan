import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_management_system/TeacherPortal/StudentWork/studentwork.dart';
import 'package:school_management_system/TeacherPortal/TeacherCheckIn/teachercheckin.dart';
import 'package:school_management_system/TeacherPortal/TeacherClasses/myclass.dart';
import 'package:school_management_system/TeacherPortal/TeacherSchedule/myschedule.dart';
import 'package:school_management_system/colors/color.dart';

class TeacherDashBoard extends StatefulWidget {
  const TeacherDashBoard({super.key});
  @override
  State<TeacherDashBoard> createState() => _TeacherDashBoardState();
}

class _TeacherDashBoardState extends State<TeacherDashBoard> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        leadingWidth: 69,
        leading: const Padding(
          padding: EdgeInsets.only(top: 10.0, left: 15),
          child: Row(
            children: [
              CircleAvatar(
                radius: 27,
                backgroundImage: AssetImage(
                  'assets/Ellipse 55.png',
                ),
              ),
            ],
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(right: 10.0, top: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Ekatrina Swan',
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: black,
                )),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                '12th Std, B - Sec',
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 11,
                  fontWeight: FontWeight.w400,
                  color: black,
                )),
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 0.0, right: 5),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications_outlined,
                  size: 30,
                  color: Colors.black,
                )),
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
      // to show teacher dashboard
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
            height: size.height / 1.2,
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
                children: [
                  Container(
                      margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          // color: const Color(0xffD4145A).withOpacity(0.2),
                          gradient: LinearGradient(colors: [
                            app5.withOpacity(0.4),
                            app.withOpacity(0.2),
                            // app3,
                            // app5.withOpacity(0.8),
                            // app.withOpacity(0.6),
                            // app.withOpacity(0.4),
                            // app6.withOpacity(0.7),
                            // app7.withOpacity(0.9),
                          ]),
                          borderRadius: BorderRadius.circular(15)),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            'assets/teacherDashBoard.svg',
                            height: 120,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'History of Physics',
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
                              SizedBox(
                                width: 174,
                                child: Text(
                                  'mcncn ncnnc djjdjd ndjjdjd nndnn nbnbm nmmn bvbbv ccfgh bvvb bbvbbxnsjkskkd xjjss xnxnxnx x xnsnnsssx ',
                                  style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w300,
                                    color: black,
                                  )),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    'Special Class',
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.red,
                                    )),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  const Icon(
                                    Icons.arrow_forward,
                                    color: Colors.red,
                                    size: 15,
                                  )
                                ],
                              )
                            ],
                          ),
                        ],
                      )
                      // ListTile(
                      //   leading: SvgPicture.asset(
                      //     'assets/teacherDashBoard.svg',
                      //     fit: BoxFit.fill,
                      //   ),
                      //   isThreeLine: true,
                      //   title: Text(
                      //     'History of Physics',
                      //     style: GoogleFonts.poppins(
                      //         textStyle: TextStyle(
                      //       decoration: TextDecoration.none,
                      //       fontSize: 14,
                      //       fontWeight: FontWeight.w600,
                      //       color: black,
                      //     )),
                      //   ),
                      //   subtitle: Column(
                      //     children: [
                      //       Text(
                      //         'Play Quiz mxmccn xnxnnx xbxbxbx xbxbxb xbxbxbx bxbxbx bxbxbx xbxbxbx xjsjjs hdhdjjd bcbcbx bxxbxbxbxn nxnnxnx',
                      //         style: GoogleFonts.poppins(
                      //             textStyle: TextStyle(
                      //           decoration: TextDecoration.none,
                      //           fontSize: 10,
                      //           fontWeight: FontWeight.w600,
                      //           color: black,
                      //         )),
                      //       ),
                      //       Row(
                      //         children: [
                      //           Text(
                      //             'Special Class',
                      //             style: GoogleFonts.poppins(
                      //                 textStyle: TextStyle(
                      //               decoration: TextDecoration.none,
                      //               fontSize: 10,
                      //               fontWeight: FontWeight.w600,
                      //               color: Colors.green,
                      //             )),
                      //           ),
                      //           Icon(
                      //             Icons.arrow_forward,
                      //             color: Colors.green,
                      //           )
                      //         ],
                      //       ),
                      //     ],
                      //   ),
                      // )
                      ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const MySchedule(),
                              ));
                        },
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: const Color(0xffA890FE).withOpacity(0.8),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            children: [
                              Text(
                                'My Scheduled',
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                  color: black,
                                )),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              SvgPicture.asset(
                                'assets/teacherDashBoard.svg',
                                height: 130,
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const TeacherCheckIn(),
                              ));
                        },
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: const Color(0xffEE9CA7),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            children: [
                              Text(
                                'My Attendance',
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                  color: black,
                                )),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              SvgPicture.asset(
                                'assets/teacherDashBoard.svg',
                                height: 130,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const AssignHomework(),
                              ));
                        },
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: const Color(0xff009245).withOpacity(0.5),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            children: [
                              Text(
                                'Student Work',
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                  color: black,
                                )),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              SvgPicture.asset(
                                'assets/teacherDashBoard.svg',
                                height: 130,
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const MyClass(),
                              ));
                        },
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: const Color(0xfff1a447).withOpacity(0.4),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            children: [
                              Text(
                                'My Classes',
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                  color: black,
                                )),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              SvgPicture.asset(
                                'assets/teacherDashBoard.svg',
                                height: 130,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
// to show data of TeachersWork

class TeachersWork {
  String work;
  String image;
  TeachersWork({required this.image, required this.work});
}
