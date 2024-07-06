import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_management_system/colors/color.dart';
import 'package:school_management_system/colors/g.dart';

class TermsConditions extends StatefulWidget {
  const TermsConditions({super.key});

  @override
  State<TermsConditions> createState() => _TermsConditionsState();
}

class _TermsConditionsState extends State<TermsConditions> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        leadingWidth: 69,
        title: Text(
          'Terms & Conditions',
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
      // to show Terms & Conditions
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
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        bottom: 5, left: 15, right: 15, top: 15),
                    child: Text(
                      'last update ,5/2/2024',
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey,
                      )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 30.0,
                      left: 15,
                      right: 15,
                    ),
                    child: Text(
                      'Please read the terms of service,carefully before using our app operated by us ',
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      )),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(bottom: 8.0, left: 15, right: 15),
                    child: CustomGradient(
                      child: Text(
                        'Condition of Uses',
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.blue,
                        )),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, right: 15),
                    child: Text(
                      'Please read these terms and conditions of use carefully before accessing, using or obtaining any materials, information, products or services. By accessing the HRMS, mobile or tablet application, or any other feature or other HRMSplatform (collectively "Our Website") you agree to be bound by these terms and conditions ("Terms") and our Privacy Policy.',
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 230.0),
                    child: SvgPicture.asset(
                      'assets/gradeBottomImage.svg',
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
