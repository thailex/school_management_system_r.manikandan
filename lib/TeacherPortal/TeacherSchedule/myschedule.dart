import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_management_system/colors/color.dart';
import 'package:timelines/timelines.dart';

class MySchedule extends StatefulWidget {
  const MySchedule({super.key});

  @override
  State<MySchedule> createState() => _MyScheduleState();
}

class _MyScheduleState extends State<MySchedule> {
  // to show list of schedule
  List<Schedule> schedule = [
    Schedule(
        classes: '+1 A',
        subject: 'English',
        time: '8:00 AM',
        topic: 'Chapter 1',
        color: app12.withOpacity(0.4),
        color1: app12.withOpacity(0.2)),
    Schedule(
        classes: '+1 A',
        subject: 'English',
        time: '9:00 AM',
        topic: 'Chapter 1',
        color: app13.withOpacity(0.4),
        color1: app13.withOpacity(0.2)),
    Schedule(
        classes: '+1 A',
        subject: 'English',
        time: '10:00 AM',
        topic: 'Chapter 1',
        color: app14.withOpacity(0.4),
        color1: app14.withOpacity(0.2)),
    Schedule(
      classes: '+1 A',
      subject: 'English',
      time: '11:00 AM',
      topic: 'Chapter 1',
      color: app15.withOpacity(0.4),
      color1: app15.withOpacity(0.2),
    ),
    Schedule(
        classes: '+1 A',
        subject: 'English',
        time: '12:00 AM',
        topic: 'Chapter 1',
        color: app12.withOpacity(0.4),
        color1: app12.withOpacity(0.2)),
    Schedule(
        classes: '+1 A',
        subject: 'English',
        time: '1:00 AM',
        topic: 'Chapter 1',
        color: app13.withOpacity(0.4),
        color1: app13.withOpacity(0.2)),
    Schedule(
        classes: '+1 A',
        subject: 'English',
        time: '2:00 AM',
        topic: 'Chapter 1',
        color: app14.withOpacity(0.4),
        color1: app14.withOpacity(0.2)),
    Schedule(
      classes: '+1 A',
      subject: 'English',
      time: '3:00 AM',
      topic: 'Chapter 1',
      color: app15.withOpacity(0.4),
      color1: app15.withOpacity(0.2),
    )
  ];
  var _selectedValue;
  bool mon = true;
  bool tue = false;
  bool wed = false;
  bool thur = false;
  bool fri = false;
  bool sat = false;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        leadingWidth: 69,
        title: Text(
          'My Schedule',
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
      // to show list of schedule
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
                DatePicker(
                  height: 80,
                  width: 65,
                  DateTime.now(),
                  initialSelectedDate: DateTime.now(),
                  selectionColor: white,
                  selectedTextColor: Colors.black,
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
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // Row(
                  //   children: [
                  //     GestureDetector(
                  //       onTap: () {
                  //         setState(() {
                  //           mon = !mon;
                  //           tue = false;
                  //           wed = false;
                  //           thur = false;
                  //           fri = false;
                  //           sat = false;
                  //         });
                  //       },
                  //       child: Container(
                  //         padding: const EdgeInsets.only(
                  //             left: 12, right: 12, top: 2, bottom: 2),
                  //         margin: const EdgeInsets.only(
                  //             left: 15, top: 15, bottom: 15, right: 5),
                  //         decoration: BoxDecoration(
                  //             gradient: (mon == true)
                  //                 ? LinearGradient(colors: [
                  //                     app5.withOpacity(0.6),
                  //                     app.withOpacity(0.2),
                  //                     // app.withOpacity(0.4),
                  //                     // app.withOpacity(0.6),
                  //                     // app3,
                  //                     // app5.withOpacity(0.8),
                  //                     // app6.withOpacity(0.7),
                  //                     // app7.withOpacity(0.9),
                  //                   ])
                  //                 : LinearGradient(colors: [
                  //                     white, white
                  //                     // app6.withOpacity(0.7),
                  //                     // app7.withOpacity(0.9),
                  //                   ]),
                  //             border: Border.all(color: black),
                  //             borderRadius: BorderRadius.circular(25)),
                  //         child: Text(
                  //           'Mon',
                  //           style: GoogleFonts.poppins(
                  //               textStyle: TextStyle(
                  //             decoration: TextDecoration.none,
                  //             fontSize: 12,
                  //             fontWeight: FontWeight.w600,
                  //             color: black,
                  //           )),
                  //         ),
                  //       ),
                  //     ),
                  //     GestureDetector(
                  //       onTap: () {
                  //         setState(() {
                  //           tue = !tue;
                  //           mon = false;
                  //           wed = false;
                  //           thur = false;
                  //           fri = false;
                  //           sat = false;
                  //         });
                  //       },
                  //       child: Container(
                  //         padding: const EdgeInsets.only(
                  //             left: 12, right: 12, top: 2, bottom: 2),
                  //         margin: const EdgeInsets.only(
                  //             top: 15, bottom: 15, right: 5),
                  //         decoration: BoxDecoration(
                  //             gradient: (tue == true)
                  //                 ? LinearGradient(colors: [
                  //                     app5.withOpacity(0.6),
                  //                     app.withOpacity(0.2),
                  //                     // app3,
                  //                     // app5.withOpacity(0.8),
                  //                     // app.withOpacity(0.6),
                  //                     // app.withOpacity(0.4),
                  //                     // app6.withOpacity(0.7),
                  //                     // app7.withOpacity(0.9),
                  //                   ])
                  //                 : LinearGradient(colors: [
                  //                     white, white
                  //                     // app6.withOpacity(0.7),
                  //                     // app7.withOpacity(0.9),
                  //                   ]),
                  //             border: Border.all(color: black),
                  //             borderRadius: BorderRadius.circular(25)),
                  //         child: Text(
                  //           'Tue',
                  //           style: GoogleFonts.poppins(
                  //               textStyle: TextStyle(
                  //             decoration: TextDecoration.none,
                  //             fontSize: 12,
                  //             fontWeight: FontWeight.w600,
                  //             color: black,
                  //           )),
                  //         ),
                  //       ),
                  //     ),
                  //     GestureDetector(
                  //       onTap: () {
                  //         setState(() {
                  //           wed = !wed;
                  //           mon = false;
                  //           tue = false;
                  //           thur = false;
                  //           fri = false;
                  //           sat = false;
                  //         });
                  //       },
                  //       child: Container(
                  //         padding: const EdgeInsets.only(
                  //             left: 12, right: 12, top: 2, bottom: 2),
                  //         margin: const EdgeInsets.only(
                  //             top: 15, bottom: 15, right: 5),
                  //         decoration: BoxDecoration(
                  //             gradient: (wed == true)
                  //                 ? LinearGradient(colors: [
                  //                     app5.withOpacity(0.6),
                  //                     app.withOpacity(0.2),
                  //                     // app3,
                  //                     // app5.withOpacity(0.8),
                  //                     // app.withOpacity(0.6),
                  //                     // app.withOpacity(0.4),
                  //                     // app6.withOpacity(0.7),
                  //                     // app7.withOpacity(0.9),
                  //                   ])
                  //                 : LinearGradient(colors: [
                  //                     white, white
                  //                     // app6.withOpacity(0.7),
                  //                     // app7.withOpacity(0.9),
                  //                   ]),
                  //             border: Border.all(color: black),
                  //             borderRadius: BorderRadius.circular(25)),
                  //         child: Text(
                  //           'Wed',
                  //           style: GoogleFonts.poppins(
                  //               textStyle: TextStyle(
                  //             decoration: TextDecoration.none,
                  //             fontSize: 12,
                  //             fontWeight: FontWeight.w600,
                  //             color: black,
                  //           )),
                  //         ),
                  //       ),
                  //     ),
                  //     GestureDetector(
                  //       onTap: () {
                  //         setState(() {
                  //           thur = !thur;
                  //           mon = false;
                  //           tue = false;
                  //           wed = false;
                  //           fri = false;
                  //           sat = false;
                  //         });
                  //       },
                  //       child: Container(
                  //         padding: const EdgeInsets.only(
                  //             left: 12, right: 12, top: 2, bottom: 2),
                  //         margin: const EdgeInsets.only(
                  //             top: 15, bottom: 15, right: 5),
                  //         decoration: BoxDecoration(
                  //             gradient: (thur == true)
                  //                 ? LinearGradient(colors: [
                  //                     app5.withOpacity(0.6),
                  //                     app.withOpacity(0.2),
                  //                     // app3,
                  //                     // app5.withOpacity(0.8),
                  //                     // app.withOpacity(0.6),
                  //                     // app.withOpacity(0.4),
                  //                     // app6.withOpacity(0.7),
                  //                     // app7.withOpacity(0.9),
                  //                   ])
                  //                 : LinearGradient(colors: [
                  //                     white, white
                  //                     // app6.withOpacity(0.7),
                  //                     // app7.withOpacity(0.9),
                  //                   ]),
                  //             border: Border.all(color: black),
                  //             borderRadius: BorderRadius.circular(25)),
                  //         child: Text(
                  //           'Thur',
                  //           style: GoogleFonts.poppins(
                  //               textStyle: TextStyle(
                  //             decoration: TextDecoration.none,
                  //             fontSize: 12,
                  //             fontWeight: FontWeight.w600,
                  //             color: black,
                  //           )),
                  //         ),
                  //       ),
                  //     ),
                  //     GestureDetector(
                  //       onTap: () {
                  //         setState(() {
                  //           fri = !fri;
                  //           mon = false;
                  //           tue = false;
                  //           wed = false;
                  //           thur = false;
                  //           sat = false;
                  //         });
                  //       },
                  //       child: Container(
                  //         padding: const EdgeInsets.only(
                  //             left: 12, right: 12, top: 2, bottom: 2),
                  //         margin: const EdgeInsets.only(
                  //             top: 15, bottom: 15, right: 5),
                  //         decoration: BoxDecoration(
                  //             gradient: (fri == true)
                  //                 ? LinearGradient(colors: [
                  //                     app5.withOpacity(0.6),
                  //                     app.withOpacity(0.2),
                  //                     // app3,
                  //                     // app5.withOpacity(0.8),
                  //                     // app.withOpacity(0.6),
                  //                     // app.withOpacity(0.4),
                  //                     // app6.withOpacity(0.7),
                  //                     // app7.withOpacity(0.9),
                  //                   ])
                  //                 : LinearGradient(colors: [
                  //                     white, white
                  //                     // app6.withOpacity(0.7),
                  //                     // app7.withOpacity(0.9),
                  //                   ]),
                  //             border: Border.all(color: black),
                  //             borderRadius: BorderRadius.circular(25)),
                  //         child: Text(
                  //           'Fri',
                  //           style: GoogleFonts.poppins(
                  //               textStyle: TextStyle(
                  //             decoration: TextDecoration.none,
                  //             fontSize: 12,
                  //             fontWeight: FontWeight.w600,
                  //             color: black,
                  //           )),
                  //         ),
                  //       ),
                  //     ),
                  //     GestureDetector(
                  //       onTap: () {
                  //         setState(() {
                  //           sat = !sat;
                  //           mon = false;
                  //           tue = false;
                  //           wed = false;
                  //           thur = false;
                  //           fri = false;
                  //         });
                  //       },
                  //       child: Container(
                  //         padding: const EdgeInsets.only(
                  //             left: 12, right: 12, top: 2, bottom: 2),
                  //         margin: const EdgeInsets.only(
                  //             top: 15, bottom: 15, right: 5),
                  //         decoration: BoxDecoration(
                  //             gradient: (sat == true)
                  //                 ? LinearGradient(colors: [
                  //                     app5.withOpacity(0.6),
                  //                     app.withOpacity(0.2),
                  //                     // app3,
                  //                     // app5.withOpacity(0.8),
                  //                     // app.withOpacity(0.6),
                  //                     // app.withOpacity(0.4),
                  //                     // app6.withOpacity(0.7),
                  //                     // app7.withOpacity(0.9),
                  //                   ])
                  //                 : LinearGradient(colors: [
                  //                     white, white
                  //                     // app6.withOpacity(0.7),
                  //                     // app7.withOpacity(0.9),
                  //                   ]),
                  //             border: Border.all(color: black),
                  //             borderRadius: BorderRadius.circular(25)),
                  //         child: Text(
                  //           'Sat',
                  //           style: GoogleFonts.poppins(
                  //               textStyle: TextStyle(
                  //             decoration: TextDecoration.none,
                  //             fontSize: 12,
                  //             fontWeight: FontWeight.w600,
                  //             color: black,
                  //           )),
                  //         ),
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  FixedTimeline.tileBuilder(
                    theme: TimelineTheme.of(context).copyWith(
                      nodePosition: 0.2,
                    ),
                    mainAxisSize: MainAxisSize.max,
                    builder: TimelineTileBuilder.connected(
                      itemCount: schedule.length,
                      connectionDirection: ConnectionDirection.before,
                      oppositeContentsBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          schedule[index].time,
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                      connectorBuilder: (context, index, type) {
                        return (index == 0)
                            ? const DashedLineConnector(
                                color: Colors.redAccent,
                              )
                            : (index == 1)
                                ? const DashedLineConnector(
                                    color: Colors.redAccent,
                                  )
                                : (index == 2)
                                    ? const DashedLineConnector(
                                        color: Colors.redAccent,
                                      )
                                    : const DashedLineConnector(
                                        color: Colors.black,
                                      );
                      },
                      indicatorBuilder: (context, index) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment
                              .start, // Align indicators to the left
                          children: [
                            if (index == 0) ...{
                              const OutlinedDotIndicator(
                                size: 15,
                                borderWidth: 4.0,
                                color: Colors.redAccent,
                              ),
                            } else if (index == 1) ...{
                              const OutlinedDotIndicator(
                                size: 15,
                                borderWidth: 4.0,
                                color: Colors.redAccent,
                              ),
                            } else if (index == 2) ...{
                              const OutlinedDotIndicator(
                                size: 15,
                                borderWidth: 4.0,
                                color: Colors.redAccent,
                              ),
                            } else if (index == 3) ...{
                              OutlinedDotIndicator(
                                size: 15,
                                borderWidth: 4.0,
                                color: Colors.grey[400],
                              ),
                            } else if (index == 4) ...{
                              OutlinedDotIndicator(
                                size: 15,
                                borderWidth: 4.0,
                                color: Colors.grey[400],
                              ),
                            } else ...{
                              OutlinedDotIndicator(
                                size: 15,
                                borderWidth: 4.0,
                                color: Colors.grey[400],
                              ),
                            }
                          ],
                        );
                      },
                      itemExtent: 100.0,
                      contentsBuilder: (context, index) {
                        return Container(
                          padding: const EdgeInsets.only(
                              left: 15, top: 15, bottom: 15, right: 15),
                          margin: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: schedule[index].color,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                schedule[index].subject,
                                style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: schedule[index].color1,
                                ),
                                child: Text(
                                  schedule[index].classes,
                                  style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                schedule[index].topic,
                                style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
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
// to show data of schedule

class Schedule {
  String subject;
  String classes;
  String topic;
  String time;
  Color color;
  Color color1;

  Schedule({
    required this.classes,
    required this.subject,
    required this.time,
    required this.topic,
    required this.color,
    required this.color1,
  });
}
