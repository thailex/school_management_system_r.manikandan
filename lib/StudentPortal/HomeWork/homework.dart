import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_management_system/colors/color.dart';

class HomeWork extends StatefulWidget {
  const HomeWork({super.key});

  @override
  State<HomeWork> createState() => _HomeWorkState();
}

class _HomeWorkState extends State<HomeWork> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: Text(
          'Home Work',
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
      // to show homeWork
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
                      topRight: Radius.circular(25))),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 5,
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
                    child: Column(
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
                          title: Text(
                            'Biology',
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: black,
                            )),
                          ),
                          subtitle: Row(
                            children: [
                              const Icon(
                                Icons.access_time,
                                size: 16,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                '09:00 AM - 09:45 AM',
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
                            'Draw and label respiratory system of a female crocodile.To be submitted in the next class.',
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
              )),
        ],
      ),
    ));
  }
}
