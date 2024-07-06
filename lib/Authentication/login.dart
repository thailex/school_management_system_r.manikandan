import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_management_system/DashBoard/dashboard.dart';
import 'package:school_management_system/Select%20Portal/selectportal.dart';
import 'package:school_management_system/colors/color.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool passwordVisible = false;
  bool passwordVisible1 = false;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      // to authenticate for login
      body: SingleChildScrollView(
        child: Container(
            padding: const EdgeInsets.only(top: 50),
            decoration: BoxDecoration(
                // image: const DecorationImage(
                //     image: AssetImage("assets/bg.jpg"),
                //     fit: BoxFit.fill,
                //     opacity: 0.15),
                gradient: LinearGradient(colors: [
              // app11.withOpacity(0.6),
              // app10.withOpacity(0.2)
              // app3,
              app5.withOpacity(0.6),
              app.withOpacity(0.2),
              // app.withOpacity(0.4),
            ])),
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 50.0, top: 50, right: 10, bottom: 5),
                      child: SvgPicture.asset('assets/login.svg'),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 15.0, top: 20, bottom: 5),
                      child: Text(
                        'Hi Student',
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                          color: black.withOpacity(0.9),
                        )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0, bottom: 25),
                      child: Text(
                        'Sign in to continue',
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: black.withOpacity(0.4),
                        )),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: size.height / 2,
                  decoration: BoxDecoration(
                      color: white,
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25))),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 25.0, right: 25, top: 15, bottom: 15),
                          child: TextFormField(
                            decoration: InputDecoration(
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                color: appColor,
                              )),
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                color: appColor,
                              )),
                              labelText: 'Mobile Number/Email',
                              labelStyle: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: black,
                              )),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your email';
                              }
                              return null;
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 25.0, right: 25, top: 15, bottom: 15),
                          child: TextFormField(
                            obscureText: passwordVisible,
                            decoration: InputDecoration(
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                color: appColor,
                              )),
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                color: appColor,
                              )),
                              labelText: 'Password',
                              labelStyle: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: black,
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
                                return 'Please enter your password';
                              } else if (value.length < 6) {
                                return 'Password is too short';
                              }
                              return null;
                            },
                          ),
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const PortalSelction(),
                                ));
                          },
                          child: Container(
                            padding: const EdgeInsets.all(15),
                            margin: const EdgeInsets.only(
                                left: 20, right: 20, top: 30),
                            decoration: BoxDecoration(
                                gradient: LinearGradient(colors: [
                                  app.withOpacity(0.6),
                                  app5.withOpacity(0.2),
                                ]),
                                borderRadius: BorderRadius.circular(10)),
                            child: Row(
                              children: [
                                const Spacer(),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Text(
                                    'SIGN IN',
                                    style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                      color: black,
                                    )),
                                  ),
                                ),
                                const Spacer(),
                                Icon(
                                  Icons.arrow_forward,
                                  color: black,
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15, bottom: 18),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Forget Password?',
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        decoration: TextDecoration.none,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: black)),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
