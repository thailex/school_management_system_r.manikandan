import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_management_system/colors/color.dart';

class AskDoubt extends StatefulWidget {
  const AskDoubt({super.key});

  @override
  State<AskDoubt> createState() => _AskDoubtState();
}

class _AskDoubtState extends State<AskDoubt> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  FocusNode searchFocusNode = FocusNode();
  FocusNode textFieldFocusNode = FocusNode();
  List<String> selectTeacher = ['Mari', 'Mani'];
  List<String> selectSubject = ['Maths', 'English'];
  String? _selectTeacher;
  String? _selectSubject;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: Text(
          'Ask Doubts',
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
      // to ask doubts
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
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 20,
                          right: 20,
                          top: 15,
                        ),
                        child: DropdownButtonFormField(
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                          icon: const Icon(Icons.keyboard_arrow_down),
                          value: _selectTeacher,
                          items: selectTeacher
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              _selectTeacher = newValue;
                            });
                          },
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.only(
                              right: 15,
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                              color: appColor,
                            )),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                              color: appColor,
                            )),
                            labelText: 'Select Teacher',
                            labelStyle: GoogleFonts.poppins(
                                textStyle: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: grey,
                            )),
                            floatingLabelAlignment:
                                FloatingLabelAlignment.start,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 20,
                          right: 20,
                          top: 15,
                        ),
                        child: DropdownButtonFormField(
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                          icon: const Icon(Icons.keyboard_arrow_down),
                          value: _selectSubject,
                          items: selectSubject
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              _selectSubject = newValue;
                            });
                          },
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.only(
                              right: 15,
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                              color: appColor,
                            )),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                              color: appColor,
                            )),
                            labelText: 'Select Subject',
                            labelStyle: GoogleFonts.poppins(
                                textStyle: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: grey,
                            )),
                            floatingLabelAlignment:
                                FloatingLabelAlignment.start,
                          ),
                        ),
                      ),
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
                        margin:
                            const EdgeInsets.only(top: 40, left: 20, right: 20),
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
                        padding: const EdgeInsets.only(top: 85.0),
                        child: SvgPicture.asset(
                          'assets/gradeBottomImage.svg',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ),
              ))
        ],
      ),
    ));
  }
}
