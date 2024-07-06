import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_management_system/colors/color.dart';

class Grade extends StatefulWidget {
  const Grade({super.key});

  @override
  State<Grade> createState() => _GradeState();
}

class _GradeState extends State<Grade> {
  List<Datatable> dataTable = [
    Datatable(subject: 'English', mark: 100, grade: '91 - A'),
    Datatable(subject: 'Hindi', mark: 100, grade: '95 - A'),
    Datatable(subject: 'Science', mark: 100, grade: '74 -B'),
    Datatable(subject: 'Math', mark: 100, grade: '79 - B'),
    Datatable(subject: 'Social Study', mark: 100, grade: '91 - A'),
    Datatable(subject: 'Drawing', mark: 100, grade: '91 - A'),
    Datatable(subject: 'Computer', mark: 100, grade: '91 - A')
  ];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          // to show the result of students
          body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            alignment: Alignment.topCenter,
            height: size.height,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              app5.withOpacity(0.6),
              app.withOpacity(0.2),
              // app3,
              // app5.withOpacity(0.8),
              // app.withOpacity(0.6),
              // app.withOpacity(0.4),
            ])),
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: SvgPicture.asset(
                        'assets/grade.svg',
                        fit: BoxFit.cover,
                        height: 300,
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(
                            left: 15.0, top: 20, bottom: 5),
                        child: RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                                text: '  85 %\n',
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600,
                                  color: black,
                                )),
                                children: [
                                  TextSpan(
                                    text: '  Grade A',
                                    style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                      color: black,
                                    )),
                                  )
                                ]))),
                  ],
                ),
                Positioned(
                    left: 15,
                    top: 20,
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: black,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    )
                    // Icon(
                    //   Icons.arrow_back_ios,
                    //   color: app.withOpacity(1),
                    //   size: 35,
                    // ),
                    ),
              ],
            ),
          ),
          Container(
            height: size.height / 1.7,
            width: size.width,
            decoration: BoxDecoration(
                color: white,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25))),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text(
                    'You are Excellent',
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: black,
                    )),
                  ),
                  Text(
                    'Mari Selvam!!',
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: black,
                    )),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black)),
                    child: DataTable(
                        headingRowColor: MaterialStateProperty.resolveWith(
                            (states) => app5.withOpacity(0.4)),
                        dataRowColor: MaterialStateProperty.resolveWith(
                            (states) => black),
                        headingRowHeight: 35,
                        dataRowHeight: 30,
                        columns: const [
                          DataColumn(
                              label: Text('Subject',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold))),
                          DataColumn(
                              label: Text('Mark',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold))),
                          DataColumn(
                              label: Text('Grade',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold))),
                        ],
                        rows: List.generate(
                            dataTable.length,
                            (index) => DataRow(
                                  color: MaterialStateProperty.resolveWith(
                                      (states) => index % 2 == 0
                                          ? app.withOpacity(0.2)
                                          : white),
                                  cells: [
                                    DataCell(Text(dataTable[index].subject)),
                                    DataCell(
                                        Text(dataTable[index].mark.toString())),
                                    DataCell(Text(dataTable[index].grade)),
                                  ],
                                ))),
                  ),
                  // GestureDetector(
                  //   onTap: () {
                  //     Navigator.pop(context);
                  //   },
                  //   child: Padding(
                  //     padding: const EdgeInsets.only(top: 8.0),
                  //     child: Text(
                  //       'Go Back',
                  //       style: GoogleFonts.poppins(
                  //           textStyle: TextStyle(
                  //         decoration: TextDecoration.none,
                  //         fontSize: 12,
                  //         fontWeight: FontWeight.w600,
                  //         color: black,
                  //       )),
                  //     ),
                  //   ),
                  // ),
                  SvgPicture.asset(
                    'assets/gradeBottomImage.svg',
                    fit: BoxFit.fill,
                  ),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}

class Datatable {
  String subject;
  int mark;
  String grade;
  Datatable({required this.subject, required this.mark, required this.grade});
}
