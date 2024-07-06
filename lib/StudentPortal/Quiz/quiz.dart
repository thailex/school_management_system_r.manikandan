import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';
import 'package:school_management_system/colors/color.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  // bool one = false;
  // bool two = false;
  // bool three = false;
  // bool four = false;
  // List<QuizLists> quizListing = [
  //   QuizLists(quizLists: [
  //     "In 2017, which player became the leading run scorer of all tie in women's ODI cricket?",
  //   ]),
  //   QuizLists(quizLists: [
  //     QuizList(
  //       options: 'Taylor',
  //       sno: 'A.',
  //       question:
  //           "In 2017, which player became the leading run scorer of all tie in women's ODI cricket?",
  //     ),
  //     QuizList(options: 'Raj', sno: 'B.', question: ''),
  //     QuizList(options: 'Kaur', sno: 'C.', question: ''),
  //     QuizList(options: 'Sharma', sno: 'D.', question: ''),
  //   ]),
  //   QuizLists(quizLists: [
  //     QuizList(
  //       options: 'Taylor',
  //       sno: 'A.',
  //       question:
  //           "In 2017, which player became the leading run scorer of all tie in women's ODI cricket?",
  //     ),
  //     QuizList(options: 'Raj', sno: 'B.', question: ''),
  //     QuizList(options: 'Kaur', sno: 'C.', question: ''),
  //     QuizList(options: 'Sharma', sno: 'D.', question: ''),
  //   ]),
  //   QuizLists(quizLists: [
  //     QuizList(
  //       options: 'Taylor',
  //       sno: 'A.',
  //       question:
  //           "In 2017, which player became the leading run scorer of all tie in women's ODI cricket?",
  //     ),
  //     QuizList(options: 'Raj', sno: 'B.', question: ''),
  //     QuizList(options: 'Kaur', sno: 'C.', question: ''),
  //     QuizList(options: 'Sharma', sno: 'D.', question: ''),
  //   ]),
  //   QuizLists(quizLists: [
  //     QuizList(
  //       options: 'Taylor',
  //       sno: 'A.',
  //       question:
  //           "In 2017, which player became the leading run scorer of all tie in women's ODI cricket?",
  //     ),
  //     QuizList(options: 'Raj', sno: 'B.', question: ''),
  //     QuizList(options: 'Kaur', sno: 'C.', question: ''),
  //     QuizList(options: 'Sharma', sno: 'D.', question: ''),
  //   ]),
  //   QuizLists(quizLists: [
  //     QuizList(
  //       options: 'Taylor',
  //       sno: 'A.',
  //       question:
  //           "In 2017, which player became the leading run scorer of all tie in women's ODI cricket?",
  //     ),
  //     QuizList(options: 'Raj', sno: 'B.', question: ''),
  //     QuizList(options: 'Kaur', sno: 'C.', question: ''),
  //     QuizList(options: 'Sharma', sno: 'D.', question: ''),
  //   ]),
  //   QuizLists(quizLists: [
  //     QuizList(
  //       options: 'Taylor',
  //       sno: 'A.',
  //       question:
  //           "In 2017, which player became the leading run scorer of all tie in women's ODI cricket?",
  //     ),
  //     QuizList(options: 'Raj', sno: 'B.', question: ''),
  //     QuizList(options: 'Kaur', sno: 'C.', question: ''),
  //     QuizList(options: 'Sharma', sno: 'D.', question: ''),
  //   ]),
  //   QuizLists(quizLists: [
  //     QuizList(
  //       options: 'Taylor',
  //       sno: 'A.',
  //       question:
  //           "In 2017, which player became the leading run scorer of all tie in women's ODI cricket?",
  //     ),
  //     QuizList(options: 'Raj', sno: 'B.', question: ''),
  //     QuizList(options: 'Kaur', sno: 'C.', question: ''),
  //     QuizList(options: 'Sharma', sno: 'D.', question: ''),
  //   ]),
  //   QuizLists(quizLists: [
  //     QuizList(
  //       options: 'Taylor',
  //       sno: 'A.',
  //       question:
  //           "In 2017, which player became the leading run scorer of all tie in women's ODI cricket?",
  //     ),
  //     QuizList(options: 'Raj', sno: 'B.', question: ''),
  //     QuizList(options: 'Kaur', sno: 'C.', question: ''),
  //     QuizList(options: 'Sharma', sno: 'D.', question: ''),
  //   ]),
  //   QuizLists(quizLists: [
  //     QuizList(
  //       options: 'Taylor',
  //       sno: 'A.',
  //       question:
  //           "In 2017, which player became the leading run scorer of all tie in women's ODI cricket?",
  //     ),
  //     QuizList(options: 'Raj', sno: 'B.', question: ''),
  //     QuizList(options: 'Kaur', sno: 'C.', question: ''),
  //     QuizList(options: 'Sharma', sno: 'D.', question: ''),
  //   ]),
  // ];
  // to show the list of quiz
  List<QuizOptions> quizList = [
    QuizOptions(
      options: 'Taylor',
      sno: 'A.',
    ),
    QuizOptions(
      options: 'Raj',
      sno: 'B.',
    ),
    QuizOptions(
      options: 'Kaur',
      sno: 'C.',
    ),
    QuizOptions(
      options: 'Sharma',
      sno: 'D.',
    ),
  ];
  // List<QuizList> quizList1 = [
  //   QuizList(
  //     options: 'Taylor',
  //     sno: 'A.',
  //     question:
  //         "In 2017, which player became the leading run scorer of all tie in women's ODI cricket?",
  //   ),
  //   QuizList(options: 'Raj', sno: 'B.', question: ''),
  //   QuizList(options: 'Kaur', sno: 'C.', question: ''),
  //   QuizList(options: 'Sharma', sno: 'D.', question: ''),
  // ];
  // List<QuizList> quizList2 = [
  //   QuizList(
  //     options: 'Taylor',
  //     sno: 'A.',
  //     question:
  //         "In 2017, which player became the leading run scorer of all tie in women's ODI cricket?",
  //   ),
  //   QuizList(options: 'Raj', sno: 'B.', question: ''),
  //   QuizList(options: 'Kaur', sno: 'C.', question: ''),
  //   QuizList(options: 'Sharma', sno: 'D.', question: ''),
  // ];
  // List<QuizList> quizList3 = [
  //   QuizList(
  //     options: 'Taylor',
  //     sno: 'A.',
  //     question:
  //         "In 2017, which player became the leading run scorer of all tie in women's ODI cricket?",
  //   ),
  //   QuizList(options: 'Raj', sno: 'B.', question: ''),
  //   QuizList(options: 'Kaur', sno: 'C.', question: ''),
  //   QuizList(options: 'Sharma', sno: 'D.', question: ''),
  // ];
  // List<QuizList> quizList4 = [
  //   QuizList(
  //     options: 'Taylor',
  //     sno: 'A.',
  //     question:
  //         "In 2017, which player became the leading run scorer of all tie in women's ODI cricket?",
  //   ),
  //   QuizList(options: 'Raj', sno: 'B.', question: ''),
  //   QuizList(options: 'Kaur', sno: 'C.', question: ''),
  //   QuizList(options: 'Sharma', sno: 'D.', question: ''),
  // ];
  // List<QuizList> quizList5 = [
  //   QuizList(
  //     options: 'Taylor',
  //     sno: 'A.',
  //     question:
  //         "In 2017, which player became the leading run scorer of all tie in women's ODI cricket?",
  //   ),
  //   QuizList(options: 'Raj', sno: 'B.', question: ''),
  //   QuizList(options: 'Kaur', sno: 'C.', question: ''),
  //   QuizList(options: 'Sharma', sno: 'D.', question: ''),
  // ];
  // List<QuizList> quizList6 = [
  //   QuizList(
  //     options: 'Taylor',
  //     sno: 'A.',
  //     question:
  //         "In 2017, which player became the leading run scorer of all tie in women's ODI cricket?",
  //   ),
  //   QuizList(options: 'Raj', sno: 'B.', question: ''),
  //   QuizList(options: 'Kaur', sno: 'C.', question: ''),
  //   QuizList(options: 'Sharma', sno: 'D.', question: ''),
  // ];
  // List<QuizList> quizList7 = [
  //   QuizList(
  //     options: 'Taylor',
  //     sno: 'A.',
  //     question:
  //         "In 2017, which player became the leading run scorer of all tie in women's ODI cricket?",
  //   ),
  //   QuizList(options: 'Raj', sno: 'B.', question: ''),
  //   QuizList(options: 'Kaur', sno: 'C.', question: ''),
  //   QuizList(options: 'Sharma', sno: 'D.', question: ''),
  // ];
  // List<QuizList> quizList8 = [
  //   QuizList(
  //     options: 'Taylor',
  //     sno: 'A.',
  //     question:
  //         "In 2017, which player became the leading run scorer of all tie in women's ODI cricket?",
  //   ),
  //   QuizList(options: 'Raj', sno: 'B.', question: ''),
  //   QuizList(options: 'Kaur', sno: 'C.', question: ''),
  //   QuizList(options: 'Sharma', sno: 'D.', question: ''),
  // ];
  // List<QuizList> quizList9 = [
  //   QuizList(
  //     options: 'Taylor',
  //     sno: 'A.',
  //     question:
  //         "In 2017, which player became the leading run scorer of all tie in women's ODI cricket?",
  //   ),
  //   QuizList(options: 'Raj', sno: 'B.', question: ''),
  //   QuizList(options: 'Kaur', sno: 'C.', question: ''),
  //   QuizList(options: 'Sharma', sno: 'D.', question: ''),
  // ];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        leadingWidth: 69,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: black,
          ),
        ),
        title: Text(
          'Play Quiz',
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
      // to show the list of quiz
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
            height: MediaQuery.of(context).size.height / 1.17,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: white,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25))),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(15),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(25)),
                          child: LinearProgressBar(
                            maxSteps: 7, minHeight: 30,
                            progressType: LinearProgressBar
                                .progressTypeLinear, // Use Linear progress
                            currentStep: 3,
                            progressColor: Colors.greenAccent,
                            backgroundColor: grey,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '18 sec',
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                  color: black,
                                )),
                              ),
                              Icon(
                                Icons.access_time,
                                size: 25,
                                color: black,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  ListTile(
                    leading: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                            text: 'Question 1',
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 25,
                              fontWeight: FontWeight.w600,
                              color: black,
                            )),
                            children: [
                              TextSpan(
                                text: '  /10',
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: black,
                                )),
                              )
                            ])),
                    trailing: Container(
                      padding: const EdgeInsets.only(left: 5, right: 5),
                      height: 30,
                      width: 60,
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
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(
                            Icons.people_alt_sharp,
                            size: 15,
                          ),
                          Text(
                            '265',
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                              color: black,
                            )),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 330,
                    child: Divider(
                      height: 30,
                      color: black,
                    ),
                  ),
                  SizedBox(
                    height: size.height / 1.67,
                    child: ListView.builder(
                      physics: const PageScrollPhysics(),
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Container(
                          padding: const EdgeInsets.only(
                              left: 10, right: 10, bottom: 10, top: 20),
                          margin: const EdgeInsets.all(10),
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
                              borderRadius: BorderRadius.circular(20)),
                          child: Stack(
                            alignment: Alignment.topCenter,
                            children: [
                              Container(
                                height: size.height / 1.88,
                                width: size.width / 1.3,
                                decoration: BoxDecoration(
                                    color: white.withOpacity(0.3),
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                              Container(
                                height: size.height / 1.92,
                                width: size.width / 1.25,
                                decoration: BoxDecoration(
                                    color: white.withOpacity(0.4),
                                    border: Border.all(
                                        color: black.withOpacity(0.1)),
                                    borderRadius: BorderRadius.circular(15)),
                              ),
                              Container(
                                padding: const EdgeInsets.all(15),
                                height: size.height / 1.96,
                                width: size.width / 1.2,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.white),
                                child: Column(
                                  children: [
                                    Text(
                                      "In 2017, which player became the leading run scorer of all tie in women's ODI cricket?",
                                      style: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                        decoration: TextDecoration.none,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black,
                                      )),
                                    ),
                                    SizedBox(
                                      height: size.height / 2.6,
                                      child: ListView.builder(
                                        physics:
                                            const NeverScrollableScrollPhysics(),
                                        itemCount: quizList.length,
                                        itemBuilder: (context, index) {
                                          return GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                quizList[index].select =
                                                    !quizList[index].select;
                                              });
                                            },
                                            child: Container(
                                              margin: const EdgeInsets.only(
                                                  top: 10),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  border:
                                                      Border.all(color: black)),
                                              child: ListTile(
                                                leading: RichText(
                                                    textAlign: TextAlign.center,
                                                    text: TextSpan(
                                                        text:
                                                            quizList[index].sno,
                                                        style:
                                                            GoogleFonts.poppins(
                                                                textStyle:
                                                                    TextStyle(
                                                          decoration:
                                                              TextDecoration
                                                                  .none,
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          color: black,
                                                        )),
                                                        children: [
                                                          TextSpan(
                                                            text:
                                                                quizList[index]
                                                                    .options,
                                                            style: GoogleFonts
                                                                .poppins(
                                                                    textStyle:
                                                                        TextStyle(
                                                              decoration:
                                                                  TextDecoration
                                                                      .none,
                                                              fontSize: 12,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              color: black,
                                                            )),
                                                          )
                                                        ])),
                                                trailing: Container(
                                                  height: 20,
                                                  width: 20,
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: black),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            50),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    )
                                  ],
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
// to show the data of QuizOptions

class QuizOptions {
  String sno;
  String options;
  bool select = false;
  QuizOptions({required this.options, required this.sno});
}
// to show the data of QuizLists

class QuizLists {
  List quizLists;
  QuizLists({required this.quizLists});
}
