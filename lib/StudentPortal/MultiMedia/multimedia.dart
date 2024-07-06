import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_management_system/colors/color.dart';

class MultiMedia extends StatefulWidget {
  const MultiMedia({super.key});

  @override
  State<MultiMedia> createState() => _MultiMediaState();
}

class _MultiMediaState extends State<MultiMedia> {
  bool videos = true;
  bool images = false;
  bool documents = false;
  bool links = false;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      //     to show multiMedia
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
                  'Multi Media',
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
            height: size.height / 1.2,
            width: size.width,
            decoration: BoxDecoration(
                color: white,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25))),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // GestureDetector(
                      //   onTap: () {
                      //     setState(() {
                      //       all = !all;
                      //       videos = false;
                      //       images = false;
                      //       documents = false;
                      //       links = false;
                      //     });
                      //   },
                      //   child: Container(
                      //     padding: const EdgeInsets.only(
                      //         left: 12, right: 12, top: 2, bottom: 2),
                      //     margin: const EdgeInsets.only(
                      //         left: 15, top: 15, bottom: 15, right: 5),
                      //     decoration: BoxDecoration(
                      //         gradient: (all == true)
                      //             ? LinearGradient(colors: [
                      //                 app5.withOpacity(0.6),
                      //                 app.withOpacity(0.2),
                      //                 // app.withOpacity(0.4),
                      //                 // app.withOpacity(0.6),
                      //                 // app3,
                      //                 // app5.withOpacity(0.8),
                      //                 // app6.withOpacity(0.7),
                      //                 // app7.withOpacity(0.9),
                      //               ])
                      //             : LinearGradient(colors: [
                      //                 white, white
                      //                 // app6.withOpacity(0.7),
                      //                 // app7.withOpacity(0.9),
                      //               ]),
                      //         border: Border.all(color: black),
                      //         borderRadius: BorderRadius.circular(25)),
                      //     child: Text(
                      //       'all',
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
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            videos = true;
                            images = false;
                            documents = false;
                            links = false;
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.only(
                              left: 12, right: 12, top: 2, bottom: 2),
                          margin: const EdgeInsets.only(
                              top: 15, bottom: 15, right: 5),
                          decoration: BoxDecoration(
                              gradient: (videos == true)
                                  ? LinearGradient(colors: [
                                      app5.withOpacity(0.6),
                                      app.withOpacity(0.2),
                                      // app3,
                                      // app5.withOpacity(0.8),
                                      // app.withOpacity(0.6),
                                      // app.withOpacity(0.4),
                                      // app6.withOpacity(0.7),
                                      // app7.withOpacity(0.9),
                                    ])
                                  : LinearGradient(colors: [
                                      white, white
                                      // app6.withOpacity(0.7),
                                      // app7.withOpacity(0.9),
                                    ]),
                              border: Border.all(color: black),
                              borderRadius: BorderRadius.circular(25)),
                          child: Text(
                            'Videos',
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: black,
                            )),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            images = !images;
                            videos = false;
                            documents = false;
                            links = false;
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.only(
                              left: 12, right: 12, top: 2, bottom: 2),
                          margin: const EdgeInsets.only(
                              top: 15, bottom: 15, right: 5),
                          decoration: BoxDecoration(
                              gradient: (images == true)
                                  ? LinearGradient(colors: [
                                      app5.withOpacity(0.6),
                                      app.withOpacity(0.2),
                                      // app3,
                                      // app5.withOpacity(0.8),
                                      // app.withOpacity(0.6),
                                      // app.withOpacity(0.4),
                                      // app6.withOpacity(0.7),
                                      // app7.withOpacity(0.9),
                                    ])
                                  : LinearGradient(colors: [
                                      white, white
                                      // app6.withOpacity(0.7),
                                      // app7.withOpacity(0.9),
                                    ]),
                              border: Border.all(color: black),
                              borderRadius: BorderRadius.circular(25)),
                          child: Text(
                            'Images',
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: black,
                            )),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            documents = !documents;
                            videos = false;
                            images = false;
                            links = false;
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.only(
                              left: 12, right: 12, top: 2, bottom: 2),
                          margin: const EdgeInsets.only(
                              top: 15, bottom: 15, right: 5),
                          decoration: BoxDecoration(
                              gradient: (documents == true)
                                  ? LinearGradient(colors: [
                                      app5.withOpacity(0.6),
                                      app.withOpacity(0.2),
                                      // app3,
                                      // app5.withOpacity(0.8),
                                      // app.withOpacity(0.6),
                                      // app.withOpacity(0.4),
                                      // app6.withOpacity(0.7),
                                      // app7.withOpacity(0.9),
                                    ])
                                  : LinearGradient(colors: [
                                      white, white
                                      // app6.withOpacity(0.7),
                                      // app7.withOpacity(0.9),
                                    ]),
                              border: Border.all(color: black),
                              borderRadius: BorderRadius.circular(25)),
                          child: Text(
                            'Documents',
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: black,
                            )),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            links = !links;
                            videos = false;
                            images = false;
                            documents = false;
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.only(
                              left: 12, right: 12, top: 2, bottom: 2),
                          margin: const EdgeInsets.only(
                              top: 15, bottom: 15, right: 5),
                          decoration: BoxDecoration(
                              gradient: (links == true)
                                  ? LinearGradient(colors: [
                                      app5.withOpacity(0.6),
                                      app.withOpacity(0.2),
                                      // app3,
                                      // app5.withOpacity(0.8),
                                      // app.withOpacity(0.6),
                                      // app.withOpacity(0.4),
                                      // app6.withOpacity(0.7),
                                      // app7.withOpacity(0.9),
                                    ])
                                  : LinearGradient(colors: [
                                      white, white
                                      // app6.withOpacity(0.7),
                                      // app7.withOpacity(0.9),
                                    ]),
                              border: Border.all(color: black),
                              borderRadius: BorderRadius.circular(25)),
                          child: Text(
                            'Links',
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: black,
                            )),
                          ),
                        ),
                      ),
                    ],
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.all(10),
                        padding: const EdgeInsets.only(
                            left: 10, right: 10, top: 10, bottom: 5),
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
                        child: ListTile(
                          leading: Container(
                            alignment: Alignment.center,
                            width: 60,
                            height: 100,
                            decoration: BoxDecoration(
                                color: white,
                                borderRadius: BorderRadius.circular(15)),
                            child: Text(
                              'PDF',
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                color: black,
                              )),
                            ),
                          ),
                          contentPadding: EdgeInsets.zero,
                          isThreeLine: true,
                          title: Text(
                            'Science Syllabus',
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: black,
                            )),
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Syllabus for 2020 batch',
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontSize: 11,
                                  fontWeight: FontWeight.w800,
                                  color: grey,
                                )),
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              Text(
                                '12 pages / 320 kb',
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w800,
                                  color: grey,
                                )),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
