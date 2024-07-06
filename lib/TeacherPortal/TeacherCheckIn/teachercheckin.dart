import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_management_system/colors/color.dart';
import 'package:slide_to_act/slide_to_act.dart';

class TeacherCheckIn extends StatefulWidget {
  const TeacherCheckIn({super.key});

  @override
  State<TeacherCheckIn> createState() => _TeacherCheckInState();
}

class _TeacherCheckInState extends State<TeacherCheckIn> {
  var _selectedValue;
  bool isChecked = false;
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
      // to show teacher check in
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DatePicker(
                  height: 88,
                  width: 65,
                  DateTime.now(),
                  initialSelectedDate: DateTime.now(),
                  selectionColor: app5.withOpacity(0.4),
                  selectedTextColor: Colors.white,
                  deactivatedColor: Colors.grey.shade200,
                  dateTextStyle: GoogleFonts.poppins(
                      textStyle: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: black,
                  )),
                  dayTextStyle: GoogleFonts.poppins(
                      textStyle: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w600,
                    color: black,
                  )),
                  monthTextStyle: GoogleFonts.poppins(
                      textStyle: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w600,
                    color: black,
                  )),
                  onDateChange: (date) {
                    // New date selected
                    setState(() {
                      _selectedValue = date;
                    });
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, top: 30),
                  child: Text(
                    'Today Attendance',
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: black,
                    )),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      width: 160,
                      height: 130,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: app12.withOpacity(0.4)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    color: Colors.grey[200],
                                    borderRadius: BorderRadius.circular(5)),
                                child: const Icon(
                                  Icons.login_outlined,
                                  color: Colors.black,
                                  size: 22,
                                ),
                              ),
                              Text(
                                'Check In',
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: black,
                                )),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                child: Text(
                                  '9:00 AM',
                                  style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                    color: black,
                                  )),
                                ),
                              ),
                            ],
                          ),
                          Text(
                            'On Time',
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
                    Container(
                      width: 160,
                      height: 130,
                      margin: const EdgeInsets.only(
                        top: 10,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: app15.withOpacity(0.4)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    color: Colors.grey[200],
                                    borderRadius: BorderRadius.circular(5)),
                                child: const Icon(
                                  Icons.logout_outlined,
                                  color: Colors.black,
                                  size: 22,
                                ),
                              ),
                              Text(
                                'Check Out',
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: black,
                                )),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                child: Text(
                                  '5:00 PM',
                                  style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                    color: black,
                                  )),
                                ),
                              ),
                            ],
                          ),
                          Text(
                            'Go Home',
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
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, top: 25),
                  child: Text(
                    'Your Activity',
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: black,
                    )),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          blurRadius: 2.0,
                        ),
                      ]),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(5),
                            margin: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(5)),
                            child: const Icon(
                              Icons.login,
                              color: Colors.blue,
                              size: 22,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Check In',
                                  style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: black,
                                  )),
                                ),
                                SizedBox(
                                  width: 100,
                                  child: Text(
                                    'April 8, 2024',
                                    style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w600,
                                      color: grey,
                                    )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 100,
                                child: Text(
                                  '10:00 AM',
                                  style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: black,
                                  )),
                                ),
                              ),
                              Text(
                                'On Time',
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: grey,
                                )),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          blurRadius: 2.0,
                        ),
                      ]),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(5),
                            margin: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(5)),
                            child: const Icon(
                              Icons.logout,
                              color: Colors.blue,
                              size: 22,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Check Out',
                                  style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: black,
                                  )),
                                ),
                                SizedBox(
                                  width: 100,
                                  child: Text(
                                    'April 8, 2024',
                                    style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w600,
                                      color: grey,
                                    )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 100,
                                child: Text(
                                  '05:00 PM',
                                  style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: black,
                                  )),
                                ),
                              ),
                              Text(
                                'Go Home',
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600,
                                  color: grey,
                                )),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                isChecked == false
                    ? Container(
                        padding: const EdgeInsets.only(bottom: 15.0),
                        margin:
                            const EdgeInsets.only(left: 10, right: 10, top: 20),
                        child: SlideAction(
                          sliderButtonIconPadding: 8,
                          height: 55,
                          sliderButtonIcon: const Icon(
                            Icons.arrow_forward,
                            color: Colors.green,
                          ),
                          innerColor: Colors.white,
                          outerColor: Colors.green.shade400,
                          borderRadius: 10,
                          text: 'Swipe to Check In ',
                          textStyle: GoogleFonts.poppins(
                              textStyle: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: white,
                          )),
                          onSubmit: () {
                            setState(() {
                              isChecked = true;
                            });
                            return null;
                          },
                        ),
                      )
                    : Container(
                        padding: const EdgeInsets.only(bottom: 15.0),
                        margin:
                            const EdgeInsets.only(left: 10, right: 10, top: 20),
                        child: SlideAction(
                          sliderButtonIconPadding: 8,
                          height: 55,
                          sliderButtonIcon: const Icon(
                            Icons.arrow_forward,
                            color: Colors.redAccent,
                          ),
                          innerColor: Colors.white,
                          outerColor: Colors.redAccent,
                          borderRadius: 10,
                          text: 'Swipe to Check Out ',
                          textStyle: GoogleFonts.poppins(
                              textStyle: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: white,
                          )),
                          onSubmit: () {
                            setState(() {
                              isChecked = false;
                            });
                            return null;
                          },
                        ),
                      ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
