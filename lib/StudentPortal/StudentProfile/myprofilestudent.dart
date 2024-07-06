import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_management_system/colors/color.dart';

class MyProfileStudent extends StatefulWidget {
  const MyProfileStudent({super.key});
  @override
  State<MyProfileStudent> createState() => _MyProfileStudentState();
}

class _MyProfileStudentState extends State<MyProfileStudent> {
  List<ExpandList> expand = [
    ExpandList(
        header: 'General Profile',
        body: generalProfiles(),
        color: app15.withOpacity(0.6)),
    ExpandList(
        header: 'Attendance',
        body: attendance(),
        color: app12.withOpacity(0.6)),
    ExpandList(
        header: 'First Term Report Card',
        body: term1ReportCard(),
        color: app13.withOpacity(0.6)),
    ExpandList(
        header: 'Second Term Report Card',
        body: term2ReportCard(),
        color: app14.withOpacity(0.4)),
    ExpandList(
        header: 'Final Report Card',
        body: finalReportCard(),
        color: app15.withOpacity(0.6)),
  ];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: Text(
          'My Profile',
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
      // to show profile of student
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
                Container(
                  margin: const EdgeInsets.only(left: 15, right: 15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: app.withOpacity(0.1),
                      border: Border.all(color: black.withOpacity(0.2))),
                  child: ListTile(
                    leading: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: grey,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    title: Text(
                      'Mari Selvam',
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: black,
                      )),
                    ),
                    subtitle: Text(
                      'Class XI - A, Roll no - 76543 ',
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 9,
                        fontWeight: FontWeight.w400,
                        color: black,
                      )),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: size.height / 1.4,
            width: size.width,
            decoration: BoxDecoration(
              color: white,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
            ),
            child: ListView.builder(
              itemCount: expand.length,
              itemBuilder: (context, ind) {
                return Container(
                  margin: const EdgeInsets.all(15),
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    // (expand[ind].isExpanded)
                    //     // ? Border.all(color: Colors.black)
                    //     // : Border.all(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: ExpansionPanelList(
                    elevation: 0,
                    dividerColor: Colors.black,
                    expansionCallback: (int index, bool isExpanded) {
                      setState(() {
                        expand[ind].isExpanded = !expand[ind].isExpanded;
                      });
                    },
                    expandIconColor: black,
                    animationDuration: const Duration(seconds: 1),
                    children: [
                      ExpansionPanel(
                        headerBuilder: (context, isExpanded) {
                          return Container(
                            padding: const EdgeInsets.only(
                                top: 10, bottom: 8, left: 10),
                            decoration: BoxDecoration(
                                color: expand[ind].color,
                                borderRadius: BorderRadius.circular(15)),
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Text(
                                expand[ind].header,
                                style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                        body: expand[ind].body,
                        isExpanded: expand[ind].isExpanded,
                        canTapOnHeader: true,
                      ),
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    ));
  }
}

//to show data of StudentReport
class StudentReport {
  String title;
  String subtitle;
  String image;
  Color color;

  StudentReport(
      {required this.color,
      required this.title,
      required this.subtitle,
      required this.image});
}
//to show list of term1

List<Result> term1 = [
  Result(
      subject: 'English',
      qtr1: 'A+/96',
      qtr2: 'A+/96',
      term1: 'A+/96',
      term2: '',
      finalResult: ''),
  Result(
      subject: 'English',
      qtr1: 'A+/96',
      qtr2: 'A+/96',
      term1: 'A+/96',
      term2: '',
      finalResult: ''),
  Result(
      subject: 'English',
      qtr1: 'A+/96',
      qtr2: 'A+/96',
      term1: 'A+/96',
      term2: '',
      finalResult: ''),
  Result(
      subject: 'English',
      qtr1: 'A+/96',
      qtr2: 'A+/96',
      term1: 'A+/96',
      term2: '',
      finalResult: ''),
  Result(
      subject: 'English',
      qtr1: 'A+/96',
      qtr2: 'A+/96',
      term1: 'A+/96',
      term2: '',
      finalResult: ''),
];
//to show list of term2

List<Result> term2 = [
  Result(
      subject: 'English',
      qtr1: 'A+/96',
      qtr2: 'A+/96',
      term1: '',
      term2: 'A+/96',
      finalResult: ''),
  Result(
      subject: 'English',
      qtr1: 'A+/96',
      qtr2: 'A+/96',
      term1: '',
      term2: 'A+/96',
      finalResult: ''),
  Result(
      subject: 'English',
      qtr1: 'A+/96',
      qtr2: 'A+/96',
      term1: '',
      term2: 'A+/96',
      finalResult: ''),
  Result(
      subject: 'English',
      qtr1: 'A+/96',
      qtr2: 'A+/96',
      term1: '',
      term2: 'A+/96',
      finalResult: ''),
  Result(
      subject: 'English',
      qtr1: 'A+/96',
      qtr2: 'A+/96',
      term1: '',
      term2: 'A+/96',
      finalResult: ''),
];
//to show list of finalPerformance

List<Result> finalPerformance = [
  Result(
      subject: 'English',
      qtr1: '',
      qtr2: '',
      term1: '',
      term2: '',
      finalResult: 'A+/96'),
  Result(
      subject: 'English',
      qtr1: '',
      qtr2: '',
      term1: '',
      term2: '',
      finalResult: 'A+/96'),
  Result(
      subject: 'English',
      qtr1: '',
      qtr2: '',
      term1: '',
      term2: '',
      finalResult: 'A+/96'),
  Result(
      subject: 'English',
      qtr1: '',
      qtr2: '',
      term1: '',
      term2: '',
      finalResult: 'A+/96'),
  Result(
      subject: 'English',
      qtr1: '',
      qtr2: '',
      term1: '',
      term2: '',
      finalResult: 'A+/96'),
];
//to show list of generalProfile

List<GeneralProfile> generalProfile = [
  GeneralProfile(title: 'Roll no', subtitle: '21'),
  GeneralProfile(title: 'Date of Birth', subtitle: '19/10/2006'),
  GeneralProfile(title: 'Blood Group', subtitle: 'A+'),
  GeneralProfile(title: 'Emergency Contact', subtitle: '9987657635'),
  GeneralProfile(title: 'Position in Class', subtitle: '12th B'),
  GeneralProfile(title: 'Fathers Name', subtitle: 'Raj'),
  GeneralProfile(title: 'Mothers Name', subtitle: 'Raj'),
];
// to show attendance
Widget attendance() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Divider(),
      Padding(
        padding: const EdgeInsets.only(
          left: 15.0,
          top: 5,
          bottom: 5,
        ),
        child: Text(
          'Term1',
          style: GoogleFonts.poppins(
              textStyle: TextStyle(
            decoration: TextDecoration.none,
            fontSize: 13,
            fontWeight: FontWeight.w600,
            color: black,
          )),
        ),
      ),
      Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '235 / 245 days',
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
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Total Attendance of the student',
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: black,
                  )),
                ),
              ],
            )
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(
          left: 15.0,
          bottom: 5,
        ),
        child: Text(
          'Term2',
          style: GoogleFonts.poppins(
              textStyle: TextStyle(
            decoration: TextDecoration.none,
            fontSize: 13,
            fontWeight: FontWeight.w600,
            color: black,
          )),
        ),
      ),
      Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '235 / 245 days',
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
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Total Attendance of the student',
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: black,
                  )),
                ),
              ],
            )
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(
          left: 15.0,
        ),
        child: Text(
          'Remarks by teacher',
          style: GoogleFonts.poppins(
              textStyle: TextStyle(
            decoration: TextDecoration.none,
            fontSize: 13,
            fontWeight: FontWeight.w600,
            color: black,
          )),
        ),
      ),
      Container(
        margin: const EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 3),
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: const Color(0xffFBB03B).withOpacity(0.4),
            borderRadius: BorderRadius.circular(15)),
        child: Text(
          'Teachers nncnmc mxmxksksk cncm mcmcmmcc jdjdjd sm,dd kdkkdkd jdjjjd jdjdjdj djdjdjd djdjdjjd djjdjd ncncnc ncncnc ncncnc cnncnnxncxnc cnxjncxnc cjxncnxnc xncjnxncknxc jcnxnkcnkc xmmncxncknxknc cxncmnxmnc xmcnmxncmnxc  djdjdndnd ncnnc ncncnc ncncnc cncnnc cncncnc cncncnc cncncnc cncjuf djjfjf jfdkdk',
          style: GoogleFonts.poppins(
              textStyle: TextStyle(
            decoration: TextDecoration.none,
            fontSize: 10,
            fontWeight: FontWeight.w600,
            color: black,
          )),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 15.0, bottom: 18),
        child: Text(
          '- Viraj Mehtra',
          style: GoogleFonts.poppins(
              textStyle: const TextStyle(
            decoration: TextDecoration.none,
            fontSize: 13,
            fontWeight: FontWeight.w600,
            color: Colors.red,
          )),
        ),
      ),
    ],
  );
}
// to show term1ReportCard

Widget term1ReportCard() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Divider(),
      Container(
        margin: const EdgeInsets.only(left: 15, top: 5, right: 15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.black)),
        child: DataTable(
            columnSpacing: 35,
            headingRowColor: MaterialStateProperty.resolveWith(
                (states) => app5.withOpacity(0.4)),
            dataRowColor: MaterialStateProperty.resolveWith((states) => black),
            headingRowHeight: 35,
            dataRowHeight: 30,
            columns: const [
              DataColumn(
                  label: Text('Subject',
                      style: TextStyle(
                          fontSize: 13, fontWeight: FontWeight.bold))),
              DataColumn(
                  label: Text('Qtr1',
                      style: TextStyle(
                          fontSize: 13, fontWeight: FontWeight.bold))),
              DataColumn(
                  label: Text('Qtr2',
                      style: TextStyle(
                          fontSize: 13, fontWeight: FontWeight.bold))),
              DataColumn(
                  label: Text('term I',
                      style: TextStyle(
                          fontSize: 13, fontWeight: FontWeight.bold))),
            ],
            rows: List.generate(
                term1.length,
                (index) => DataRow(
                      color: MaterialStateProperty.resolveWith((states) =>
                          index % 2 == 0 ? app.withOpacity(0.2) : white),
                      cells: [
                        DataCell(Text(term1[index].subject)),
                        DataCell(Text(term1[index].qtr1)),
                        DataCell(Text(term1[index].qtr2)),
                        DataCell(Text(term1[index].term1)),
                      ],
                    ))),
      ),
      Padding(
        padding: const EdgeInsets.only(right: 45.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 55.0),
              child: Text(
                'GPA',
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Colors.red,
                )),
              ),
            ),
            Text(
              '7.8',
              style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                decoration: TextDecoration.none,
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: Colors.red,
              )),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 15.0, top: 15),
        child: Text(
          'Remarks by teacher',
          style: GoogleFonts.poppins(
              textStyle: TextStyle(
            decoration: TextDecoration.none,
            fontSize: 13,
            fontWeight: FontWeight.w600,
            color: black,
          )),
        ),
      ),
      Container(
        margin: const EdgeInsets.only(left: 15, right: 15, top: 5),
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: const Color(0xffFBB03B).withOpacity(0.4),
            borderRadius: BorderRadius.circular(15)),
        child: Text(
          'Teachers nncnmc mxmxksksk cncm mcmcmmcc jdjdjd sm,dd kdkkdkd jdjjjd jdjdjdj djdjdjd djdjdjjd djjdjd ncncnc ncncnc ncncnc cnncnnxncxnc cnxjncxnc cjxncnxnc xncjnxncknxc jcnxnkcnkc xmmncxncknxknc cxncmnxmnc xmcnmxncmnxc  djdjdndnd ncnnc ncncnc ncncnc cncnnc cncncnc cncncnc cncncnc cncjuf djjfjf jfdkdk',
          style: GoogleFonts.poppins(
              textStyle: TextStyle(
            decoration: TextDecoration.none,
            fontSize: 10,
            fontWeight: FontWeight.w600,
            color: black,
          )),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 15.0, top: 3, bottom: 18),
        child: Text(
          '- Viraj Mehtra',
          style: GoogleFonts.poppins(
              textStyle: const TextStyle(
            decoration: TextDecoration.none,
            fontSize: 13,
            fontWeight: FontWeight.w600,
            color: Colors.red,
          )),
        ),
      ),
    ],
  );
}
// to show term2ReportCard

Widget term2ReportCard() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Divider(),
      Container(
        margin: const EdgeInsets.only(left: 15, top: 5, right: 15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.black)),
        child: DataTable(
            columnSpacing: 35,
            headingRowColor: MaterialStateProperty.resolveWith(
                (states) => app5.withOpacity(0.4)),
            dataRowColor: MaterialStateProperty.resolveWith((states) => black),
            headingRowHeight: 35,
            dataRowHeight: 30,
            columns: const [
              DataColumn(
                  label: Text('Subject',
                      style: TextStyle(
                          fontSize: 13, fontWeight: FontWeight.bold))),
              DataColumn(
                  label: Text('Qtr1',
                      style: TextStyle(
                          fontSize: 13, fontWeight: FontWeight.bold))),
              DataColumn(
                  label: Text('Qtr2',
                      style: TextStyle(
                          fontSize: 13, fontWeight: FontWeight.bold))),
              DataColumn(
                  label: Text('term II',
                      style: TextStyle(
                          fontSize: 13, fontWeight: FontWeight.bold))),
            ],
            rows: List.generate(
                term2.length,
                (index) => DataRow(
                      color: MaterialStateProperty.resolveWith((states) =>
                          index % 2 == 0 ? app.withOpacity(0.2) : white),
                      cells: [
                        DataCell(Text(term2[index].subject)),
                        DataCell(Text(term2[index].qtr1)),
                        DataCell(Text(term2[index].qtr2)),
                        DataCell(Text(term2[index].term2)),
                      ],
                    ))),
      ),
      Padding(
        padding: const EdgeInsets.only(right: 45.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 55.0),
              child: Text(
                'GPA',
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Colors.red,
                )),
              ),
            ),
            Text(
              '7.8',
              style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                decoration: TextDecoration.none,
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: Colors.red,
              )),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 15.0, top: 15, bottom: 5),
        child: Text(
          'Remarks by teacher',
          style: GoogleFonts.poppins(
              textStyle: TextStyle(
            decoration: TextDecoration.none,
            fontSize: 13,
            fontWeight: FontWeight.w600,
            color: black,
          )),
        ),
      ),
      Container(
        margin: const EdgeInsets.only(left: 15, right: 15, bottom: 3),
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: const Color(0xffFBB03B).withOpacity(0.4),
            borderRadius: BorderRadius.circular(15)),
        child: Text(
          'Teachers nncnmc mxmxksksk cncm mcmcmmcc jdjdjd sm,dd kdkkdkd jdjjjd jdjdjdj djdjdjd djdjdjjd djjdjd ncncnc ncncnc ncncnc cnncnnxncxnc cnxjncxnc cjxncnxnc xncjnxncknxc jcnxnkcnkc xmmncxncknxknc cxncmnxmnc xmcnmxncmnxc  djdjdndnd ncnnc ncncnc ncncnc cncnnc cncncnc cncncnc cncncnc cncjuf djjfjf jfdkdk',
          style: GoogleFonts.poppins(
              textStyle: TextStyle(
            decoration: TextDecoration.none,
            fontSize: 10,
            fontWeight: FontWeight.w600,
            color: black,
          )),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 15.0, bottom: 18),
        child: Text(
          '- Viraj Mehtra',
          style: GoogleFonts.poppins(
              textStyle: const TextStyle(
            decoration: TextDecoration.none,
            fontSize: 13,
            fontWeight: FontWeight.w600,
            color: Colors.red,
          )),
        ),
      ),
    ],
  );
}
// to show finalReportCard

Widget finalReportCard() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Divider(),
      Container(
        margin: const EdgeInsets.only(left: 15, top: 5, right: 15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.black)),
        child: DataTable(
            columnSpacing: 170,
            headingRowColor: MaterialStateProperty.resolveWith(
                (states) => app5.withOpacity(0.4)),
            dataRowColor: MaterialStateProperty.resolveWith((states) => black),
            headingRowHeight: 35,
            dataRowHeight: 30,
            columns: const [
              DataColumn(
                  label: Text('Subject',
                      style: TextStyle(
                          fontSize: 13, fontWeight: FontWeight.bold))),
              DataColumn(
                  label: Text('Final',
                      style: TextStyle(
                          fontSize: 13, fontWeight: FontWeight.bold))),
            ],
            rows: List.generate(
                finalPerformance.length,
                (index) => DataRow(
                      color: MaterialStateProperty.resolveWith((states) =>
                          index % 2 == 0 ? app.withOpacity(0.2) : white),
                      cells: [
                        DataCell(Text(finalPerformance[index].subject)),
                        DataCell(Text(finalPerformance[index].finalResult)),
                      ],
                    ))),
      ),
      Padding(
        padding: const EdgeInsets.only(right: 45.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 55.0),
              child: Text(
                'GPA',
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Colors.red,
                )),
              ),
            ),
            Text(
              '7.8',
              style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                decoration: TextDecoration.none,
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: Colors.red,
              )),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 15.0, top: 15, bottom: 5),
        child: Text(
          'Remarks by teacher',
          style: GoogleFonts.poppins(
              textStyle: TextStyle(
            decoration: TextDecoration.none,
            fontSize: 13,
            fontWeight: FontWeight.w600,
            color: black,
          )),
        ),
      ),
      Container(
        margin: const EdgeInsets.only(left: 15, right: 15, bottom: 3),
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: const Color(0xffFBB03B).withOpacity(0.4),
            borderRadius: BorderRadius.circular(15)),
        child: Text(
          'Teachers nncnmc mxmxksksk cncm mcmcmmcc jdjdjd sm,dd kdkkdkd jdjjjd jdjdjdj djdjdjd djdjdjjd djjdjd ncncnc ncncnc ncncnc cnncnnxncxnc cnxjncxnc cjxncnxnc xncjnxncknxc jcnxnkcnkc xmmncxncknxknc cxncmnxmnc xmcnmxncmnxc  djdjdndnd ncnnc ncncnc ncncnc cncnnc cncncnc cncncnc cncncnc cncjuf djjfjf jfdkdk',
          style: GoogleFonts.poppins(
              textStyle: TextStyle(
            decoration: TextDecoration.none,
            fontSize: 10,
            fontWeight: FontWeight.w600,
            color: black,
          )),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 15.0, bottom: 18),
        child: Text(
          '- Viraj Mehtra',
          style: GoogleFonts.poppins(
              textStyle: const TextStyle(
            decoration: TextDecoration.none,
            fontSize: 13,
            fontWeight: FontWeight.w600,
            color: Colors.red,
          )),
        ),
      ),
      // const SizedBox(),
      // Container(
      //   color: const Color(0xffFBB03B).withOpacity(0.3),
      //   padding: const EdgeInsets.only(top: 15, bottom: 10),
      //   child: Center(
      //     child: Text(
      //       'Attendance',
      //       style: GoogleFonts.poppins(
      //           textStyle: const TextStyle(
      //         decoration: TextDecoration.none,
      //         fontSize: 16,
      //         fontWeight: FontWeight.w600,
      //         color: Colors.black,
      //       )),
      //     ),
      //   ),
      // ),
      // Padding(
      //   padding: const EdgeInsets.only(
      //     left: 15.0,
      //     top: 15,
      //     bottom: 5,
      //   ),
      //   child: Text(
      //     'Term1',
      //     style: GoogleFonts.poppins(
      //         textStyle: TextStyle(
      //       decoration: TextDecoration.none,
      //       fontSize: 13,
      //       fontWeight: FontWeight.w600,
      //       color: black,
      //     )),
      //   ),
      // ),
      // Container(
      //   padding: const EdgeInsets.all(10),
      //   margin: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
      //   decoration: BoxDecoration(
      //       borderRadius: BorderRadius.circular(15),
      //       gradient: LinearGradient(colors: [
      //         app5.withOpacity(0.6),
      //         app.withOpacity(0.2),
      //         // app3,
      //         // app5.withOpacity(0.8),
      //         // app.withOpacity(0.6),
      //         // app.withOpacity(0.4),
      //         // app6.withOpacity(0.7),
      //         // app7.withOpacity(0.9),
      //       ])),
      //   child: Column(
      //     children: [
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         children: [
      //           Text(
      //             '235 / 245 days',
      //             style: GoogleFonts.poppins(
      //                 textStyle: TextStyle(
      //               decoration: TextDecoration.none,
      //               fontSize: 13,
      //               fontWeight: FontWeight.w600,
      //               color: black,
      //             )),
      //           ),
      //         ],
      //       ),
      //       const SizedBox(
      //         height: 5,
      //       ),
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         children: [
      //           Text(
      //             'Total Attendance of the student',
      //             style: GoogleFonts.poppins(
      //                 textStyle: TextStyle(
      //               decoration: TextDecoration.none,
      //               fontSize: 13,
      //               fontWeight: FontWeight.w600,
      //               color: black,
      //             )),
      //           ),
      //         ],
      //       )
      //     ],
      //   ),
      // ),
      // Padding(
      //   padding: const EdgeInsets.only(
      //     left: 15.0,
      //     bottom: 5,
      //   ),
      //   child: Text(
      //     'Term2',
      //     style: GoogleFonts.poppins(
      //         textStyle: TextStyle(
      //       decoration: TextDecoration.none,
      //       fontSize: 13,
      //       fontWeight: FontWeight.w600,
      //       color: black,
      //     )),
      //   ),
      // ),
      // Container(
      //   padding: const EdgeInsets.all(10),
      //   margin: const EdgeInsets.only(left: 15, right: 15),
      //   decoration: BoxDecoration(
      //       borderRadius: BorderRadius.circular(15),
      //       gradient: LinearGradient(colors: [
      //         app5.withOpacity(0.6),
      //         app.withOpacity(0.2),
      //         // app3,
      //         // app5.withOpacity(0.8),
      //         // app.withOpacity(0.6),
      //         // app.withOpacity(0.4),
      //         // app6.withOpacity(0.7),
      //         // app7.withOpacity(0.9),
      //       ])),
      //   child: Column(
      //     children: [
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         children: [
      //           Text(
      //             '235 / 245 days',
      //             style: GoogleFonts.poppins(
      //                 textStyle: TextStyle(
      //               decoration: TextDecoration.none,
      //               fontSize: 13,
      //               fontWeight: FontWeight.w600,
      //               color: black,
      //             )),
      //           ),
      //         ],
      //       ),
      //       const SizedBox(
      //         height: 5,
      //       ),
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         children: [
      //           Text(
      //             'Total Attendance of the student',
      //             style: GoogleFonts.poppins(
      //                 textStyle: TextStyle(
      //               decoration: TextDecoration.none,
      //               fontSize: 13,
      //               fontWeight: FontWeight.w600,
      //               color: black,
      //             )),
      //           ),
      //         ],
      //       )
      //     ],
      //   ),
      // ),
      // const SizedBox(
      //   height: 20,
      // ),
      // Container(
      //   color: const Color(0xffFBB03B).withOpacity(0.3),
      //   padding: const EdgeInsets.only(top: 10, bottom: 10),
      //   child: Center(
      //     child: Text(
      //       'Academic Performance',
      //       style: GoogleFonts.poppins(
      //           textStyle: const TextStyle(
      //         decoration: TextDecoration.none,
      //         fontSize: 16,
      //         fontWeight: FontWeight.w600,
      //         color: Colors.black,
      //       )),
      //     ),
      //   ),
      // ),
      // Padding(
      //   padding: const EdgeInsets.only(left: 15.0, top: 15),
      //   child: Text(
      //     'Term1',
      //     style: GoogleFonts.poppins(
      //         textStyle: TextStyle(
      //       decoration: TextDecoration.none,
      //       fontSize: 13,
      //       fontWeight: FontWeight.w600,
      //       color: black,
      //     )),
      //   ),
      // ),
      // Container(
      //   margin: const EdgeInsets.only(left: 15, top: 5, right: 15),
      //   decoration: BoxDecoration(
      //       borderRadius: BorderRadius.circular(10),
      //       border: Border.all(color: Colors.black)),
      //   child: DataTable(
      //       columnSpacing: 52,
      //       headingRowColor: MaterialStateProperty.resolveWith(
      //           (states) => app5.withOpacity(0.4)),
      //       dataRowColor: MaterialStateProperty.resolveWith((states) => black),
      //       headingRowHeight: 35,
      //       dataRowHeight: 30,
      //       columns: const [
      //         DataColumn(
      //             label: Text('Subject',
      //                 style: TextStyle(
      //                     fontSize: 13, fontWeight: FontWeight.bold))),
      //         DataColumn(
      //             label: Text('Qtr1',
      //                 style: TextStyle(
      //                     fontSize: 13, fontWeight: FontWeight.bold))),
      //         DataColumn(
      //             label: Text('Qtr2',
      //                 style: TextStyle(
      //                     fontSize: 13, fontWeight: FontWeight.bold))),
      //         DataColumn(
      //             label: Text('term I',
      //                 style: TextStyle(
      //                     fontSize: 13, fontWeight: FontWeight.bold))),
      //       ],
      //       rows: List.generate(
      //           term1.length,
      //           (index) => DataRow(
      //                 color: MaterialStateProperty.resolveWith((states) =>
      //                     index % 2 == 0 ? app.withOpacity(0.2) : white),
      //                 cells: [
      //                   DataCell(Text(term1[index].subject)),
      //                   DataCell(Text(term1[index].qtr1)),
      //                   DataCell(Text(term1[index].qtr2)),
      //                   DataCell(Text(term1[index].term1)),
      //                 ],
      //               ))),
      // ),
      // Padding(
      //   padding: const EdgeInsets.only(right: 45.0),
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.end,
      //     children: [
      //       Padding(
      //         padding: const EdgeInsets.only(right: 55.0),
      //         child: Text(
      //           'GPA',
      //           style: GoogleFonts.poppins(
      //               textStyle: const TextStyle(
      //             decoration: TextDecoration.none,
      //             fontSize: 15,
      //             fontWeight: FontWeight.w600,
      //             color: Colors.red,
      //           )),
      //         ),
      //       ),
      //       Text(
      //         '7.8',
      //         style: GoogleFonts.poppins(
      //             textStyle: const TextStyle(
      //           decoration: TextDecoration.none,
      //           fontSize: 15,
      //           fontWeight: FontWeight.w600,
      //           color: Colors.red,
      //         )),
      //       ),
      //     ],
      //   ),
      // ),
      // Padding(
      //   padding: const EdgeInsets.only(left: 15.0, top: 5),
      //   child: Text(
      //     'Term2',
      //     style: GoogleFonts.poppins(
      //         textStyle: TextStyle(
      //       decoration: TextDecoration.none,
      //       fontSize: 13,
      //       fontWeight: FontWeight.w600,
      //       color: black,
      //     )),
      //   ),
      // ),
      // Container(
      //   margin: const EdgeInsets.only(left: 15, top: 5, right: 15),
      //   decoration: BoxDecoration(
      //       borderRadius: BorderRadius.circular(10),
      //       border: Border.all(color: Colors.black)),
      //   child: DataTable(
      //       columnSpacing: 52,
      //       headingRowColor: MaterialStateProperty.resolveWith(
      //           (states) => app5.withOpacity(0.4)),
      //       dataRowColor: MaterialStateProperty.resolveWith((states) => black),
      //       headingRowHeight: 35,
      //       dataRowHeight: 30,
      //       columns: const [
      //         DataColumn(
      //             label: Text('Subject',
      //                 style: TextStyle(
      //                     fontSize: 13, fontWeight: FontWeight.bold))),
      //         DataColumn(
      //             label: Text('Qtr1',
      //                 style: TextStyle(
      //                     fontSize: 13, fontWeight: FontWeight.bold))),
      //         DataColumn(
      //             label: Text('Qtr2',
      //                 style: TextStyle(
      //                     fontSize: 13, fontWeight: FontWeight.bold))),
      //         DataColumn(
      //             label: Text('term II',
      //                 style: TextStyle(
      //                     fontSize: 13, fontWeight: FontWeight.bold))),
      //       ],
      //       rows: List.generate(
      //           term2.length,
      //           (index) => DataRow(
      //                 color: MaterialStateProperty.resolveWith((states) =>
      //                     index % 2 == 0 ? app.withOpacity(0.2) : white),
      //                 cells: [
      //                   DataCell(Text(term2[index].subject)),
      //                   DataCell(Text(term2[index].qtr1)),
      //                   DataCell(Text(term2[index].qtr2)),
      //                   DataCell(Text(term2[index].term2)),
      //                 ],
      //               ))),
      // ),
      // Padding(
      //   padding: const EdgeInsets.only(right: 45.0),
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.end,
      //     children: [
      //       Padding(
      //         padding: const EdgeInsets.only(right: 55.0),
      //         child: Text(
      //           'GPA',
      //           style: GoogleFonts.poppins(
      //               textStyle: const TextStyle(
      //             decoration: TextDecoration.none,
      //             fontSize: 15,
      //             fontWeight: FontWeight.w600,
      //             color: Colors.red,
      //           )),
      //         ),
      //       ),
      //       Text(
      //         '7.8',
      //         style: GoogleFonts.poppins(
      //             textStyle: const TextStyle(
      //           decoration: TextDecoration.none,
      //           fontSize: 15,
      //           fontWeight: FontWeight.w600,
      //           color: Colors.red,
      //         )),
      //       ),
      //     ],
      //   ),
      // ),
      // Padding(
      //   padding: const EdgeInsets.only(left: 15.0, top: 5),
      //   child: Text(
      //     'Term2',
      //     style: GoogleFonts.poppins(
      //         textStyle: TextStyle(
      //       decoration: TextDecoration.none,
      //       fontSize: 13,
      //       fontWeight: FontWeight.w600,
      //       color: black,
      //     )),
      //   ),
      // ),
      // Container(
      //   margin: const EdgeInsets.only(left: 15, top: 5, right: 15),
      //   decoration: BoxDecoration(
      //       borderRadius: BorderRadius.circular(10),
      //       border: Border.all(color: Colors.black)),
      //   child: DataTable(
      //       columnSpacing: 210,
      //       headingRowColor: MaterialStateProperty.resolveWith(
      //           (states) => app5.withOpacity(0.4)),
      //       dataRowColor: MaterialStateProperty.resolveWith((states) => black),
      //       headingRowHeight: 35,
      //       dataRowHeight: 30,
      //       columns: const [
      //         DataColumn(
      //             label: Text('Subject',
      //                 style: TextStyle(
      //                     fontSize: 13, fontWeight: FontWeight.bold))),
      //         DataColumn(
      //             label: Text('Final',
      //                 style: TextStyle(
      //                     fontSize: 13, fontWeight: FontWeight.bold))),
      //       ],
      //       rows: List.generate(
      //           finalPerformance.length,
      //           (index) => DataRow(
      //                 color: MaterialStateProperty.resolveWith((states) =>
      //                     index % 2 == 0 ? app.withOpacity(0.2) : white),
      //                 cells: [
      //                   DataCell(Text(finalPerformance[index].subject)),
      //                   DataCell(Text(finalPerformance[index].finalResult)),
      //                 ],
      //               ))),
      // ),
      // Padding(
      //   padding: const EdgeInsets.only(right: 45.0),
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.end,
      //     children: [
      //       Padding(
      //         padding: const EdgeInsets.only(right: 55.0),
      //         child: Text(
      //           'GPA',
      //           style: GoogleFonts.poppins(
      //               textStyle: const TextStyle(
      //             decoration: TextDecoration.none,
      //             fontSize: 15,
      //             fontWeight: FontWeight.w600,
      //             color: Colors.red,
      //           )),
      //         ),
      //       ),
      //       Text(
      //         '7.8',
      //         style: GoogleFonts.poppins(
      //             textStyle: const TextStyle(
      //           decoration: TextDecoration.none,
      //           fontSize: 15,
      //           fontWeight: FontWeight.w600,
      //           color: Colors.red,
      //         )),
      //       ),
      //     ],
      //   ),
      // ),
      // Padding(
      //   padding: const EdgeInsets.only(left: 15.0, top: 5, bottom: 10),
      //   child: Text(
      //     'Remarks by teacher',
      //     style: GoogleFonts.poppins(
      //         textStyle: TextStyle(
      //       decoration: TextDecoration.none,
      //       fontSize: 15,
      //       fontWeight: FontWeight.w600,
      //       color: black,
      //     )),
      //   ),
      // ),
      // Container(
      //   margin: const EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
      //   padding: const EdgeInsets.all(15),
      //   decoration: BoxDecoration(
      //       color: const Color(0xffFBB03B).withOpacity(0.4),
      //       borderRadius: BorderRadius.circular(15)),
      //   child: Text(
      //     'Teachers nncnmc mxmxksksk cncm mcmcmmcc jdjdjd sm,dd kdkkdkd jdjjjd jdjdjdj djdjdjd djdjdjjd djjdjd ncncnc ncncnc ncncnc cnncnnxncxnc cnxjncxnc cjxncnxnc xncjnxncknxc jcnxnkcnkc xmmncxncknxknc cxncmnxmnc xmcnmxncmnxc  djdjdndnd ncnnc ncncnc ncncnc cncnnc cncncnc cncncnc cncncnc cncjuf djjfjf jfdkdk',
      //     style: GoogleFonts.poppins(
      //         textStyle: TextStyle(
      //       decoration: TextDecoration.none,
      //       fontSize: 10,
      //       fontWeight: FontWeight.w600,
      //       color: black,
      //     )),
      //   ),
      // ),
      // Padding(
      //   padding: const EdgeInsets.only(left: 15.0, top: 5),
      //   child: Text(
      //     '- Viraj Mehtra',
      //     style: GoogleFonts.poppins(
      //         textStyle: const TextStyle(
      //       decoration: TextDecoration.none,
      //       fontSize: 15,
      //       fontWeight: FontWeight.w600,
      //       color: Colors.red,
      //     )),
      //   ),
      // ),
    ],
  );
}
// to show generalProfiles

Widget generalProfiles() {
  return Container(
    margin: const EdgeInsets.only(top: 10, bottom: 18, left: 10, right: 10),
    padding: const EdgeInsets.only(left: 10, right: 5, bottom: 15, top: 15),
    decoration: BoxDecoration(
      color: app15.withOpacity(0.6),
      borderRadius: BorderRadius.circular(15),
    ),
    child: ListView.builder(
      shrinkWrap: true,
      itemCount: generalProfile.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 130,
                child: Text(generalProfile[index].title,
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: black,
                    ))),
              ),
              SizedBox(
                width: 5,
              ),
              SizedBox(
                width: 10,
                child: Text(
                  ':',
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: black,
                  )),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              SizedBox(
                width: 130,
                child: Text(
                  generalProfile[index].subtitle,
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
        );
      },
    ),
  );
}
// to show data of GeneralProfile

class GeneralProfile {
  String title;
  String subtitle;
  GeneralProfile({required this.title, required this.subtitle});
}
// to show data of Result

class Result {
  String subject;
  String qtr1;
  String qtr2;
  String term1;
  String term2;
  String finalResult;
  Result(
      {required this.subject,
      required this.qtr1,
      required this.qtr2,
      required this.term1,
      required this.term2,
      required this.finalResult});
}
// to show data of ExpandList

class ExpandList {
  Color color;
  String header;
  Widget body;
  bool isExpanded = false;
  ExpandList({required this.header, required this.body, required this.color});
}
