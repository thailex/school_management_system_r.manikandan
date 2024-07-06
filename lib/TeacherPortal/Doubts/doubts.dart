import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_management_system/TeacherPortal/Doubts/cleardoubt.dart';
import 'package:school_management_system/colors/color.dart';

class Doubts extends StatefulWidget {
  const Doubts({super.key});

  @override
  State<Doubts> createState() => _DoubtsState();
}

class _DoubtsState extends State<Doubts> {
  // to show list of doubt from student
  List<Doubt> doubt = [
    Doubt(
      color: app12.withOpacity(0.2),
      name: 'Raj',
      title: 'Surface Area and Volumes',
      time: '09:00 AM',
      description:
          'Draw and label respiratory system of a female crocodile.To be submitted in the next class',
    ),
    Doubt(
      color: app13.withOpacity(0.2),
      name: 'Raj',
      title: 'Surface Area and Volumes',
      time: '09:00 AM',
      description:
          'Draw and label respiratory system of a female crocodile.To be submitted in the next class',
    ),
    Doubt(
      color: app.withOpacity(0.1),
      name: 'Raj',
      title: 'Surface Area and Volumes',
      time: '09:00 AM',
      description:
          'Draw and label respiratory system of a female crocodile.To be submitted in the next class',
    ),
    Doubt(
      color: app15.withOpacity(0.2),
      name: 'Raj',
      title: 'Surface Area and Volumes',
      time: '09:00 AM',
      description:
          'Draw and label respiratory system of a female crocodile.To be submitted in the next class',
    ),
    Doubt(
      color: app12.withOpacity(0.2),
      name: 'Raj',
      title: 'Surface Area and Volumes',
      time: '09:00 AM',
      description:
          'Draw and label respiratory system of a female crocodile.To be submitted in the next class',
    ),
    Doubt(
      color: app13.withOpacity(0.2),
      name: 'Raj',
      title: 'Surface Area and Volumes',
      time: '09:00 AM',
      description:
          'Draw and label respiratory system of a female crocodile.To be submitted in the next class',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: Text(
          'Doubts',
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
            padding: EdgeInsets.only(right: 20),
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
      // to show list of doubt from student
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
            height: size.height / 1.17,
            width: size.width,
            decoration: BoxDecoration(
              color: white,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
            ),
            child: ListView.builder(
              itemCount: doubt.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    // boxShadow: [
                    //   BoxShadow(
                    //       color: Colors.grey.shade600,
                    //       spreadRadius: 1,
                    //       blurRadius: 15)
                    // ],
                    borderRadius: BorderRadius.circular(15),
                    color: doubt[index].color,
                    // gradient: LinearGradient(colors: [
                    //   app5.withOpacity(0.1),
                    //   app.withOpacity(0.1),
                    //   // app3,
                    //   // app5.withOpacity(0.8),
                    //   // app.withOpacity(0.6),
                    //   // app.withOpacity(0.4),
                    //   // app6.withOpacity(0.7),
                    //   // app7.withOpacity(0.9),
                    // ]),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        contentPadding: const EdgeInsets.only(
                            left: 15, right: 0, bottom: 5),
                        leading: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(15)),
                        ),
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              doubt[index].name,
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: black,
                              )),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const ClearDoubts(),
                                    ));
                              },
                              child: Container(
                                margin:
                                    const EdgeInsets.only(left: 10, right: 20),
                                padding: const EdgeInsets.only(
                                    left: 15, right: 15, top: 8, bottom: 8),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                  color: app14,
                                ),
                                child: Text(
                                  'Clear Doubt',
                                  style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w600,
                                    color: white,
                                  )),
                                ),
                              ),
                            )
                          ],
                        ),
                        subtitle: Row(
                          children: [
                            const Icon(
                              Icons.access_time,
                              size: 13,
                              color: Colors.red,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              doubt[index].time,
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                                color: Colors.red,
                              )),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0, right: 15, bottom: 10),
                        child: Text(
                          doubt[index].title,
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0, right: 15, bottom: 10),
                        child: Text(
                          doubt[index].description,
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          )),
                        ),
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
// to show data of list of doubt from student

class Doubt {
  Color color;
  String name;
  String time;
  String title;
  String description;
  Doubt(
      {required this.color,
      required this.name,
      required this.title,
      required this.time,
      required this.description});
}
