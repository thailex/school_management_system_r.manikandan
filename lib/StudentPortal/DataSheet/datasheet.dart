import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_management_system/colors/color.dart';

class DataSheet extends StatefulWidget {
  const DataSheet({super.key});

  @override
  State<DataSheet> createState() => _DataSheetState();
}

class _DataSheetState extends State<DataSheet> {
  // to show list of dataSheet
  List<DataSheets> dataSheet = [
    DataSheets(
        date: 11,
        day: 'Monday',
        time: '9:00 AM',
        subject: 'Science',
        month: 'JAN'),
    DataSheets(
        date: 13,
        day: 'Wednesday',
        time: '9:00 AM',
        subject: 'Math',
        month: 'JAN'),
    DataSheets(
        date: 15,
        day: 'Friday',
        time: '9:00 AM',
        subject: 'Social Study',
        month: 'JAN'),
    DataSheets(
        date: 18,
        day: 'Monday',
        time: '9:00 AM',
        subject: 'Computer',
        month: 'JAN'),
    DataSheets(
        date: 20,
        day: 'Wednesday',
        time: '9:00 AM',
        subject: 'English',
        month: 'JAN'),
    DataSheets(
        date: 22,
        day: 'Friday',
        time: '9:00 AM',
        subject: 'Hindi',
        month: 'JAN'),
  ];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      // to show the dataSheet
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
            child: Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: ListTile(
                isThreeLine: true,
                leading: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: black,
                  ),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '',
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 11,
                        fontWeight: FontWeight.w600,
                        color: white,
                      )),
                    ),
                  ],
                ),
                title: Text(
                  'Data Sheet',
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: black,
                  )),
                ),
              ),
            ),
          ),
          Container(
              padding: const EdgeInsets.only(top: 30, bottom: 15),
              height: size.height / 1.2,
              width: size.width,
              decoration: BoxDecoration(
                  color: white,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25))),
              child: ListView.builder(
                itemCount: dataSheet.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      const SizedBox(
                        width: 310,
                        child: Padding(
                          padding: EdgeInsets.only(left: 35.0),
                          child: Divider(
                            height: 0,
                            thickness: 2,
                          ),
                        ),
                      ),
                      ListTile(
                        leading: Column(children: [
                          Text(
                            dataSheet[index].date.toString(),
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                              color: black,
                            )),
                          ),
                          Text(
                            dataSheet[index].month,
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: black,
                            )),
                          ),
                        ]),
                        title: Text(
                          dataSheet[index].subject,
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: black,
                          )),
                        ),
                        subtitle: Text(
                          dataSheet[index].day,
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                            color: grey,
                          )),
                        ),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.access_time,
                              color: grey,
                              size: 18,
                            ),
                            const SizedBox(
                              width: 3,
                            ),
                            Text(
                              dataSheet[index].time,
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: grey,
                              )),
                            ),
                          ],
                        ),
                      ),
                      (index == dataSheet.length - 1)
                          ? const SizedBox(
                              width: 310,
                              child: Padding(
                                padding: EdgeInsets.only(left: 35.0),
                                child: Divider(
                                  height: 0,
                                  thickness: 2,
                                ),
                              ),
                            )
                          : Container(),
                    ],
                  );
                },
              ))
        ],
      ),
    ));
  }
}
// to show data of dataSheet

class DataSheets {
  int date;
  String month;
  String subject;
  String day;
  String time;
  DataSheets(
      {required this.date,
      required this.day,
      required this.time,
      required this.subject,
      required this.month});
}
