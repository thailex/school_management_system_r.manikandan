import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_management_system/colors/color.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool passwordVisible = false;
  bool passwordVisible1 = false;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        leadingWidth: 69,
        title: Text(
          'Change Password',
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
      // to change new password
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
                            labelText: 'Old Password',
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
                          obscureText: passwordVisible,
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
                            labelText: 'New Password',
                            labelStyle: GoogleFonts.poppins(
                                textStyle: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: grey,
                            )),
                            suffixIcon: IconButton(
                              icon: Icon(
                                  passwordVisible
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                  color: grey),
                              onPressed: () {
                                setState(() {
                                  passwordVisible = !passwordVisible;
                                });
                              },
                            ),
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
                          obscureText: passwordVisible1,
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
                            labelText: 'Retype Password ',
                            labelStyle: GoogleFonts.poppins(
                                textStyle: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: grey,
                            )),
                            suffixIcon: IconButton(
                              icon: Icon(
                                  passwordVisible1
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                  color: grey),
                              onPressed: () {
                                setState(() {
                                  passwordVisible1 = !passwordVisible1;
                                });
                              },
                            ),
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
                          'Change Password',
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
                        padding: const EdgeInsets.only(top: 170.0),
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
