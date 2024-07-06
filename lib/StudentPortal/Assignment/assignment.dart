import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_management_system/colors/color.dart';

class Assignment extends StatefulWidget {
  const Assignment({super.key});

  @override
  State<Assignment> createState() => _AssignmentState();
}

class _AssignmentState extends State<Assignment> {
  List<Assignments> assignment = [
    Assignments(
        subject: 'Mathematics',
        assignDate: '10 NOV 2020',
        lastSubmissionDate: '10 DEC 2020',
        task: 'Surface Areas and Volumes'),
    Assignments(
        subject: 'Science',
        assignDate: '10 NOV 2020',
        lastSubmissionDate: '10 DEC 2020',
        task: 'Surface Areas and Volumes'),
    Assignments(
        subject: 'English',
        assignDate: '10 NOV 2020',
        lastSubmissionDate: '10 DEC 2020',
        task: 'Surface Areas and Volumes'),
  ];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        leadingWidth: 69,
        title: Text(
          'Assignment',
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
      // to submit assignment
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
              height: size.height / 1.17,
              width: size.width,
              decoration: BoxDecoration(
                  color: white,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25))),
              child: ListView.builder(
                itemCount: assignment.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(top: 10, bottom: 10),
                    padding: const EdgeInsets.all(10),
                    height: size.height / 4,
                    width: size.width,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(25),
                        ),
                        border: Border.all(color: black)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(colors: [
                                app5.withOpacity(0.4),
                                app.withOpacity(0.2),
                                // app3,
                                // app5.withOpacity(0.8),
                                // app.withOpacity(0.6),
                                // app.withOpacity(0.4),
                                // app6.withOpacity(0.7),
                                // app7.withOpacity(0.9),
                              ])),
                          padding: const EdgeInsets.only(
                              left: 10, right: 10, top: 5, bottom: 5),
                          child: Text(
                            assignment[index].subject,
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 11,
                              fontWeight: FontWeight.w600,
                              color: black,
                            )),
                          ),
                        ),
                        Text(
                          assignment[index].task,
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: black,
                          )),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              assignment[index].assignDate,
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: black.withOpacity(0.3),
                              )),
                            ),
                            Text(
                              assignment[index].lastSubmissionDate,
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: black,
                              )),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Last Submission Date',
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: black.withOpacity(0.3),
                              )),
                            ),
                            Text(
                              '10 DEC 2020',
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: black,
                              )),
                            ),
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 20),
                          padding: const EdgeInsets.only(
                              left: 80, right: 80, top: 10, bottom: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(colors: [
                                app.withOpacity(0.4),
                                app5.withOpacity(0.2),
                                // app3,
                                // app5.withOpacity(0.8),
                                // app.withOpacity(0.6),
                                // app.withOpacity(0.4),
                                // app6.withOpacity(0.7),
                                // app7.withOpacity(0.9),
                              ])),
                          child: Text(
                            'TO BE SUBMITTED',
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              color: black,
                            )),
                          ),
                        )
                      ],
                    ),
                  );
                },
              ))
        ],
      ),
    ));
  }
}

// to show data for assignment
class Assignments {
  String subject;
  String task;
  String assignDate;
  String lastSubmissionDate;

  Assignments(
      {required this.subject,
      required this.assignDate,
      required this.lastSubmissionDate,
      required this.task});
}
