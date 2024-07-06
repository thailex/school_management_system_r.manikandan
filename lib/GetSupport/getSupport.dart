import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_management_system/colors/color.dart';

class GetSupport extends StatefulWidget {
  const GetSupport({super.key});

  @override
  State<GetSupport> createState() => _GetSupportState();
}

class _GetSupportState extends State<GetSupport> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              app3,
              app5.withOpacity(0.8),
              app.withOpacity(0.6),
              app.withOpacity(0.4),
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
                  'Get Support',
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
          ),
        ],
      ),
    ));
  }
}
