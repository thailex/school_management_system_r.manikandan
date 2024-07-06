import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_management_system/StudentPortal/ReportCard/teacherreportcard.dart';
import 'package:school_management_system/colors/color.dart';

class MyClass extends StatefulWidget {
  const MyClass({super.key});

  @override
  State<MyClass> createState() => _MyClassState();
}

class _MyClassState extends State<MyClass> {
  final List<String> classes = [
    'Class 1',
    'Class 2',
    'Class 3',
    'Class 4',
    'Class 5',
    'Class 6',
    'Class 7',
    'Class 8',
    'Class 9',
    'Class 10',
    'Class +1',
    'Class +2',
  ];
  final List<String> section = [
    "'A' Sec",
    "'B' Sec",
    "'C' Sec",
    "'D' Sec",
  ];
  List<StudentDetails> studentDetails = [
    StudentDetails(name: 'Raj', rollNo: '21', blood: 'A+', no: 1),
    StudentDetails(name: 'Raj', rollNo: '21', blood: 'A+', no: 1),
    StudentDetails(name: 'Raj', rollNo: '21', blood: 'A+', no: 1),
    StudentDetails(name: 'Raj', rollNo: '21', blood: 'A+', no: 1),
    StudentDetails(name: 'Raj', rollNo: '21', blood: 'A+', no: 1),
    StudentDetails(name: 'Raj', rollNo: '21', blood: 'A+', no: 1),
    StudentDetails(name: 'Raj', rollNo: '21', blood: 'A+', no: 1),
    StudentDetails(name: 'Raj', rollNo: '21', blood: 'A+', no: 1),
    StudentDetails(name: 'Raj', rollNo: '21', blood: 'A+', no: 1),
    StudentDetails(name: 'Raj', rollNo: '21', blood: 'A+', no: 1),
    StudentDetails(name: 'Raj', rollNo: '21', blood: 'A+', no: 1),
    StudentDetails(name: 'Raj', rollNo: '21', blood: 'A+', no: 1),
    StudentDetails(name: 'Raj', rollNo: '21', blood: 'A+', no: 1),
    StudentDetails(name: 'Raj', rollNo: '21', blood: 'A+', no: 1),
    StudentDetails(name: 'Raj', rollNo: '21', blood: 'A+', no: 1),
    StudentDetails(name: 'Raj', rollNo: '21', blood: 'A+', no: 1),
    StudentDetails(name: 'Raj', rollNo: '21', blood: 'A+', no: 1),
    StudentDetails(name: 'Raj', rollNo: '21', blood: 'A+', no: 1),
    StudentDetails(name: 'Raj', rollNo: '21', blood: 'A+', no: 1),
    StudentDetails(name: 'Raj', rollNo: '21', blood: 'A+', no: 1),
  ];
  String? selectedValue;
  String? selectedValue2;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: Text(
          'My Class',
          style: GoogleFonts.poppins(
              textStyle: TextStyle(
            decoration: TextDecoration.none,
            fontSize: 17,
            fontWeight: FontWeight.w600,
            color: black,
          )),
        ),
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
      // to show class details of teacher
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
                    Container(
                      decoration: BoxDecoration(
                          color: app14.withOpacity(0.4),
                          border:
                              Border.all(color: Colors.black.withOpacity(0.2)),
                          borderRadius: BorderRadius.circular(15)),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton2<String>(
                          dropdownStyleData: DropdownStyleData(
                              maxHeight: 250,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white,
                              )),
                          isExpanded: true,
                          hint: Text(
                            'Select Class',
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            )),
                          ),
                          items: classes
                              .map((String item) => DropdownMenuItem<String>(
                                    value: item,
                                    child: Text(
                                      item,
                                      style: const TextStyle(
                                        fontSize: 17,
                                      ),
                                    ),
                                  ))
                              .toList(),
                          value: selectedValue,
                          onChanged: (String? value) {
                            setState(() {
                              selectedValue = value;
                            });
                          },
                          buttonStyleData: const ButtonStyleData(
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            height: 40,
                            width: 140,
                          ),
                          menuItemStyleData: const MenuItemStyleData(
                            height: 40,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: app13.withOpacity(0.6),
                          border:
                              Border.all(color: Colors.black.withOpacity(0.2)),
                          borderRadius: BorderRadius.circular(15)),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton2<String>(
                          dropdownStyleData: DropdownStyleData(
                              maxHeight: 250,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white,
                              )),
                          isExpanded: true,
                          hint: Text(
                            'Select Sec',
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            )),
                          ),
                          items: section
                              .map((String item) => DropdownMenuItem<String>(
                                    value: item,
                                    child: Text(
                                      item,
                                      style: const TextStyle(
                                        fontSize: 17,
                                      ),
                                    ),
                                  ))
                              .toList(),
                          value: selectedValue2,
                          onChanged: (String? value) {
                            setState(() {
                              selectedValue2 = value;
                            });
                          },
                          buttonStyleData: const ButtonStyleData(
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            height: 40,
                            width: 140,
                          ),
                          menuItemStyleData: const MenuItemStyleData(
                            height: 40,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
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
                topRight: Radius.circular(25),
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                        left: 15, top: 15, right: 15, bottom: 25),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black)),
                    child: DataTable(
                        columnSpacing: 58,
                        headingRowColor: MaterialStateProperty.resolveWith(
                            (states) => app15.withOpacity(0.4)),
                        dataRowColor: MaterialStateProperty.resolveWith(
                            (states) => black),
                        headingRowHeight: 50,
                        dataRowHeight: 48,
                        columns: [
                          DataColumn(
                            label: Text(
                              'No',
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              )),
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'Name',
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              )),
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'Rollno',
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              )),
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'Blood',
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              )),
                            ),
                          ),
                        ],
                        rows: List.generate(
                            studentDetails.length,
                            (index) => DataRow(
                                  onLongPress: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const TeacherReportCard(),
                                        ));
                                  },
                                  color: MaterialStateProperty.resolveWith(
                                      (states) =>
                                          index % 2 == 0 ? white : white),
                                  cells: [
                                    DataCell(onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const TeacherReportCard(),
                                          ));
                                    },
                                        Text(
                                          studentDetails[index].no.toString(),
                                          style: GoogleFonts.poppins(
                                              textStyle: const TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black,
                                          )),
                                        )),
                                    DataCell(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  const TeacherReportCard(),
                                            ));
                                      },
                                      Text(
                                        studentDetails[index].name,
                                        style: GoogleFonts.poppins(
                                            textStyle: const TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black,
                                        )),
                                      ),
                                    ),
                                    DataCell(onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const TeacherReportCard(),
                                          ));
                                    },
                                        Text(
                                          studentDetails[index].rollNo,
                                          style: GoogleFonts.poppins(
                                              textStyle: const TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black,
                                          )),
                                        )),
                                    DataCell(onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const TeacherReportCard(),
                                          ));
                                    },
                                        Text(
                                          studentDetails[index].blood,
                                          style: GoogleFonts.poppins(
                                              textStyle: const TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black,
                                          )),
                                        )),
                                  ],
                                ))),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
// to show data of student details of teacher

class StudentDetails {
  int no;
  String name;
  String rollNo;
  String blood;
  StudentDetails(
      {required this.name,
      required this.rollNo,
      required this.blood,
      required this.no});
}
