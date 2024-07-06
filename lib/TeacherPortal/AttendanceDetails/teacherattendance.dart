import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_management_system/colors/color.dart';

class TeacherAttendance extends StatefulWidget {
  const TeacherAttendance({super.key});

  @override
  State<TeacherAttendance> createState() => _TeacherAttendanceState();
}

class _TeacherAttendanceState extends State<TeacherAttendance> {
  // to show list of students in attendance register form
  List<AttendanceList> attendanceList = [
    AttendanceList(image: '', name: 'Alaukh', rollNo: 'Rollno - 2'),
    AttendanceList(image: '', name: 'Alaukh', rollNo: 'Rollno - 2'),
    AttendanceList(image: '', name: 'Alaukh', rollNo: 'Rollno - 2'),
    AttendanceList(image: '', name: 'Alaukh', rollNo: 'Rollno - 2'),
    AttendanceList(image: '', name: 'Alaukh', rollNo: 'Rollno - 2'),
    AttendanceList(image: '', name: 'Alaukh', rollNo: 'Rollno - 2'),
  ];
  // to show list of students in attendance register form
  List<Leave> leave = [
    Leave(
        name: 'Hendry Adams',
        rollNo: 'Class 8, Roll no - 43',
        image: '',
        notes:
            "Hello I'm not feeling well and need to take 2 days of sick leave.I included my doctor's note for your review.ThankYou for your understanding.",
        documentName: 'Sick Leave document.pdf',
        color: app12.withOpacity(0.4),
        color1: app12.withOpacity(0.8)),
    Leave(
        name: 'Mari Selvam',
        rollNo: 'Class 8, Roll no - 43',
        image: '',
        notes:
            "Hello I'm not feeling well and need to take 2 days of sick leave.I included my doctor's note for your review.ThankYou for your understanding.",
        documentName: 'Sick Leave document.pdf',
        color: app13.withOpacity(0.4),
        color1: app13.withOpacity(0.8)),
    Leave(
        name: 'Manikandan',
        rollNo: 'Class 8, Roll no - 43',
        image: '',
        notes:
            "Hello I'm not feeling well and need to take 2 days of sick leave.I included my doctor's note for your review.ThankYou for your understanding.",
        documentName: 'Sick Leave document.pdf',
        color: app15.withOpacity(0.4),
        color1: app15.withOpacity(0.8)),
  ];
  bool isPressed = true;
  bool isPressed1 = false;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: Text(
          'Attendance',
          style: GoogleFonts.poppins(
              textStyle: TextStyle(
            decoration: TextDecoration.none,
            fontSize: 17,
            fontWeight: FontWeight.w600,
            color: black,
          )),
        ),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage(
                    'assets/Ellipse 55.png',
                  ),
                ),
              ],
            ),
          ),
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
      // to show list of students in attendance register form
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
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isPressed = !isPressed;
                          isPressed1 = false;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.only(
                            left: 20, right: 20, top: 10, bottom: 10),
                        decoration: BoxDecoration(
                          color: (isPressed)
                              ? app15.withOpacity(0.7)
                              : Colors.grey[200],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          'Attendance Form',
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
                        setState(() {
                          isPressed1 = !isPressed1;
                          isPressed = false;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.only(
                            left: 20, right: 20, top: 10, bottom: 10),
                        decoration: BoxDecoration(
                          color: (isPressed1)
                              ? app15.withOpacity(0.7)
                              : Colors.grey[200],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          'Leave Form',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: black,
                          )),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            height: size.height / 1.5,
            width: size.width,
            decoration: BoxDecoration(
              color: white,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
            ),

            child: (isPressed == true) ? attendanceForm() : leaves(),

            // if (isPressed == true) attendanceForm(),
            // if (isPressed1 == true) leaves(),
          )
        ],
      ),
    ));
  }

  // to show list of students in attendance register form
  attendanceForm() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 18.0),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: attendanceList.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(top: 10, bottom: 10),
            decoration: BoxDecoration(
              color: grey.withOpacity(0.2),
              borderRadius: BorderRadius.circular(15),
              border: attendanceList[index].selected == true
                  ? (Border.all(
                      width: 3,
                      color: (attendanceList[index].selected == true)
                          ? Colors.green
                          : (attendanceList[index].selected1 == true)
                              ? Colors.red
                              : Colors.transparent))
                  : Border.all(
                      width: 3,
                      color: (attendanceList[index].selected1 == true)
                          ? Colors.red
                          : (attendanceList[index].selected == true)
                              ? Colors.green
                              : Colors.transparent),
            ),
            child: ListTile(
              leading: const CircleAvatar(
                backgroundImage: AssetImage('assets/Ellipse 55.png'),
                radius: 25,
              ),
              title: Text(
                attendanceList[index].name,
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: black,
                )),
              ),
              subtitle: Text(
                attendanceList[index].rollNo,
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 10,
                  fontWeight: FontWeight.w700,
                  color: grey,
                )),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        attendanceList[index].selected =
                            !attendanceList[index].selected;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.only(
                          left: 8, right: 8, top: 2, bottom: 2),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.green,
                      ),
                      child: Text(
                        'present',
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 10,
                          fontWeight: FontWeight.w600,
                          color: white,
                        )),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        attendanceList[index].selected1 =
                            !attendanceList[index].selected1;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.only(
                          left: 8, right: 8, top: 2, bottom: 2),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.redAccent,
                      ),
                      child: Text(
                        'Absent',
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 10,
                          fontWeight: FontWeight.w600,
                          color: white,
                        )),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
  // to show students leave in attendance register form

  Widget leaves() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 18),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 3,
        itemBuilder: (context, index) {
          return Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.only(top: 10, bottom: 10),
            decoration: BoxDecoration(
              color: leave[index].color,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(leave[index].image),
                    ),
                    title: Text(
                      leave[index].name,
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      )),
                    ),
                    subtitle: Text(
                      leave[index].rollNo,
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      )),
                    ),
                    trailing: GestureDetector(
                      onTap: () {
                        setState(() {
                          leave[index].approved = !leave[index].approved;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.only(
                            left: 20, right: 20, top: 10, bottom: 10),
                        decoration: BoxDecoration(
                            color: (leave[index].approved)
                                ? grey.withOpacity(0.8)
                                : leave[index].color1,
                            borderRadius: BorderRadius.circular(13),
                            border: Border.all(
                                color: (leave[index].approved)
                                    ? Colors.black.withOpacity(0.2)
                                    : Colors.transparent)),
                        child: Text(
                          (leave[index].approved) ? 'Approved' : 'Approve',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                            color: (leave[index].approved)
                                ? Colors.black
                                : Colors.white,
                          )),
                        ),
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 5.0, left: 15, right: 15, bottom: 5),
                  child: Text(
                    'Notes :',
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    )),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(bottom: 5.0, left: 15, right: 15),
                  child: Text(
                    leave[index].notes,
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                    )),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 15.0, left: 15, right: 15),
                  child: Text(
                    'Attachment :',
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    )),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 5.0, left: 10, right: 10),
                  padding: const EdgeInsets.only(top: 0, bottom: 0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      border: Border.all(color: Colors.black.withOpacity(0.2))),
                  child: ListTile(
                    leading: Icon(
                      Icons.file_present_sharp,
                      color: appColor2,
                    ),
                    title: Text(
                      leave[index].documentName,
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      )),
                    ),
                    trailing: const Icon(
                      Icons.cloud_download_sharp,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

// to show data of students in attendance register form
class AttendanceList {
  String name;
  String image;
  String rollNo;
  bool selected;
  bool selected1;
  AttendanceList(
      {required this.image,
      required this.name,
      required this.rollNo,
      this.selected = false,
      this.selected1 = false});
}

// to show data of students leave in attendance register form
class Leave {
  bool approved = false;
  String image;
  String name;
  String rollNo;
  String notes;
  String documentName;
  Color color;
  Color color1;
  Leave({
    required this.name,
    required this.rollNo,
    required this.image,
    required this.notes,
    required this.documentName,
    required this.color,
    required this.color1,
  });
}
