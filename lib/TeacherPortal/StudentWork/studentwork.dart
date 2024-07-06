import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_management_system/TeacherPortal/StudentWork/assignmentstatus.dart';
import 'package:school_management_system/colors/color.dart';

class AssignHomework extends StatefulWidget {
  const AssignHomework({super.key});

  @override
  State<AssignHomework> createState() => _AssignHomeworkState();
}

class _AssignHomeworkState extends State<AssignHomework> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  FocusNode searchFocusNode = FocusNode();
  FocusNode textFieldFocusNode = FocusNode();
  List<String> selectClass = ['Class 1', 'Class 2'];
  List<String> selectSubject = ['Maths', 'English'];
  String? _selectClass;
  String? _selectSubject;
  List<String> selectClass1 = ['Class 1', 'Class 2'];
  List<String> selectSubject1 = ['Maths', 'English'];
  String? _selectClass1;
  String? _selectSubject1;
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
          'Student Work',
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
      // to assign homeWork and assignment for student
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
                          'Home Work',
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
                          'Assignment',
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
            height: size.height / 1.3,
            width: size.width,
            decoration: BoxDecoration(
                color: white,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25))),
            child: (isPressed) ? homeWork() : assignment(),
          )
        ],
      ),
    ));
  }

  // to assign homeWork for student
  homeWork() {
    return SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 15,
              ),
              child: DropdownButtonFormField(
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
                icon: const Icon(Icons.keyboard_arrow_down),
                value: _selectClass,
                items:
                    selectClass.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    _selectClass = newValue;
                  });
                },
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(
                    right: 15,
                  ),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                    color: appColor,
                  )),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                    color: appColor,
                  )),
                  labelText: 'Select Class',
                  labelStyle: GoogleFonts.poppins(
                      textStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: grey,
                  )),
                  floatingLabelAlignment: FloatingLabelAlignment.start,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 15,
              ),
              child: DropdownButtonFormField(
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
                icon: const Icon(Icons.keyboard_arrow_down),
                value: _selectSubject,
                items:
                    selectSubject.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    _selectSubject = newValue;
                  });
                },
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(
                    right: 15,
                  ),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                    color: appColor,
                  )),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                    color: appColor,
                  )),
                  labelText: 'Select Subject',
                  labelStyle: GoogleFonts.poppins(
                      textStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: grey,
                  )),
                  floatingLabelAlignment: FloatingLabelAlignment.start,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 15,
              ),
              child: TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(top: 15, bottom: 15),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                    color: appColor,
                  )),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                    color: appColor,
                  )),
                  labelText: 'Title',
                  labelStyle: GoogleFonts.poppins(
                      textStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: grey,
                  )),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Required Field';
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 15,
              ),
              child: TextFormField(
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(top: 15, bottom: 15),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                    color: appColor,
                  )),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                    color: appColor,
                  )),
                  labelText: 'Homework Description',
                  labelStyle: GoogleFonts.poppins(
                      textStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: grey,
                  )),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Required Field';
                  }
                  return null;
                },
              ),
            ),
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width / 0.7,
              padding: const EdgeInsets.all(15),
              margin: const EdgeInsets.only(top: 40, left: 20, right: 20),
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
                  borderRadius: BorderRadius.circular(15)),
              child: Text(
                'SEND',
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: black,
                )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 28.0),
              child: SvgPicture.asset(
                'assets/gradeBottomImage.svg',
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
      ),
    );
  }
  // to assign assignment for student

  assignment() {
    return SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 15,
              ),
              child: DropdownButtonFormField(
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
                icon: const Icon(Icons.keyboard_arrow_down),
                value: _selectClass1,
                items:
                    selectClass1.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    _selectClass1 = newValue;
                  });
                },
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(
                    right: 15,
                  ),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                    color: appColor,
                  )),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                    color: appColor,
                  )),
                  labelText: 'Select Class',
                  labelStyle: GoogleFonts.poppins(
                      textStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: grey,
                  )),
                  floatingLabelAlignment: FloatingLabelAlignment.start,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 15,
              ),
              child: DropdownButtonFormField(
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
                icon: const Icon(Icons.keyboard_arrow_down),
                value: _selectSubject1,
                items: selectSubject1
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    _selectSubject1 = newValue;
                  });
                },
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(
                    right: 15,
                  ),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                    color: appColor,
                  )),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                    color: appColor,
                  )),
                  labelText: 'Select Subject',
                  labelStyle: GoogleFonts.poppins(
                      textStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: grey,
                  )),
                  floatingLabelAlignment: FloatingLabelAlignment.start,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 15,
              ),
              child: TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(top: 15, bottom: 15),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                    color: appColor,
                  )),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                    color: appColor,
                  )),
                  labelText: 'Title',
                  labelStyle: GoogleFonts.poppins(
                      textStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: grey,
                  )),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Required Field';
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 15,
              ),
              child: TextFormField(
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(top: 15, bottom: 15),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                    color: appColor,
                  )),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                    color: appColor,
                  )),
                  labelText: 'Assignment Description',
                  labelStyle: GoogleFonts.poppins(
                      textStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: grey,
                  )),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Required Field';
                  }
                  return null;
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.only(
                      left: 55, right: 55, top: 15, bottom: 15),
                  margin: const EdgeInsets.only(top: 40, left: 10, right: 10),
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
                      borderRadius: BorderRadius.circular(15)),
                  child: Text(
                    'Send',
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: black,
                    )),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AssignmentStatus(),
                        ));
                  },
                  child: Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.only(
                        left: 40, right: 40, top: 15, bottom: 15),
                    margin: const EdgeInsets.only(top: 40, left: 10, right: 10),
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
                        borderRadius: BorderRadius.circular(15)),
                    child: Text(
                      'View Status',
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: black,
                      )),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 28.0),
              child: SvgPicture.asset(
                'assets/gradeBottomImage.svg',
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
