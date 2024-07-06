import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_management_system/colors/color.dart';

class ClearDoubts extends StatefulWidget {
  const ClearDoubts({super.key});

  @override
  State<ClearDoubts> createState() => _ClearDoubtsState();
}

class _ClearDoubtsState extends State<ClearDoubts> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: Text(
          'Clear Doubts',
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
      // to clear doubts of student
      body: Stack(
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
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                        left: 15, right: 15, top: 15, bottom: 15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: app12.withOpacity(0.4),
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
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: black,
                        )),
                      ),
                      subtitle: Text(
                        'Class XI - A, Roll no - 76543 ',
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: black,
                        )),
                      ),
                    ),
                  ),
                  Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 20,
                              right: 20,
                              top: 15,
                            ),
                            child: TextFormField(
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                contentPadding:
                                    const EdgeInsets.only(top: 15, bottom: 15),
                                focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                  color: appColor,
                                )),
                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                  color: appColor,
                                )),
                                labelText: 'Title',
                                labelStyle: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: grey,
                                )),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Required Field';
                                }
                                return null;
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 20,
                              right: 20,
                              top: 15,
                            ),
                            child: TextFormField(
                              keyboardType: TextInputType.multiline,
                              decoration: InputDecoration(
                                contentPadding:
                                    const EdgeInsets.only(top: 15, bottom: 15),
                                focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                  color: appColor,
                                )),
                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                  color: appColor,
                                )),
                                labelText: 'Doubt Description',
                                labelStyle: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: grey,
                                )),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Required Field';
                                }
                                return null;
                              },
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: size.width / 0.7,
                            padding: const EdgeInsets.all(15),
                            margin: const EdgeInsets.only(
                                top: 80, left: 20, right: 20),
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
                                borderRadius: BorderRadius.circular(15)),
                            child: Text(
                              'SEND',
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: black,
                              )),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 110.0),
                            child: SvgPicture.asset(
                              'assets/gradeBottomImage.svg',
                              fit: BoxFit.fill,
                            ),
                          ),
                        ],
                      ))
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
