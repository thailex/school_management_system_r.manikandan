import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_management_system/colors/color.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  bool isPressed = true;
  bool isPressed1 = false;
  bool isPressed2 = false;
  // to show list of personal profile
  List<Professional> personals = [
    Professional(title: 'Full Name', subtitle: 'Ekatrina Swaan'),
    Professional(title: 'Email Address', subtitle: 'ekatrina@gmail.com'),
    Professional(title: 'Phone Number', subtitle: '99964573738'),
    Professional(title: 'Address', subtitle: '242/2 mansyxhxh'),
  ];
  // to show list of professional profile

  List<Professional> professional = [
    Professional(title: 'Employee Id', subtitle: '787876'),
    Professional(title: 'Designation', subtitle: 'English Teacher'),
    Professional(title: 'School Email Address', subtitle: 'ekatrina@gmail.com'),
    Professional(title: 'Employee Type', subtitle: 'Permanent'),
    Professional(title: 'Department', subtitle: 'English'),
    Professional(title: 'School Experience', subtitle: '2 Years'),
    Professional(title: 'Office Time', subtitle: '9:00 AM - 5:00 PM'),
  ];
  // to show list of document profile

  List<Documents> document = [
    Documents(title: 'Offer Letter'),
    Documents(title: 'Appointment Letter'),
    Documents(title: 'Appraisal Letter'),
    Documents(title: 'Salary Slip'),
  ];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        leadingWidth: 69,
        title: Text(
          'My Profile',
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
      // to show teacher profile

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
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isPressed = true;
                            isPressed1 = false;
                            isPressed2 = false;
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.only(
                              left: 15, right: 15, top: 10, bottom: 10),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [
                                  isPressed
                                      ? app5.withOpacity(0.6)
                                      : Colors.grey.shade200,
                                  isPressed
                                      ? app.withOpacity(0.2)
                                      : Colors.grey.shade200,
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: Text(
                              'Personal',
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              )),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isPressed1 = true;
                            isPressed = false;
                            isPressed2 = false;
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.only(
                              left: 15, right: 15, top: 10, bottom: 10),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [
                                  isPressed1
                                      ? app5.withOpacity(0.6)
                                      : Colors.grey.shade200,
                                  isPressed1
                                      ? app.withOpacity(0.2)
                                      : Colors.grey.shade200,
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: Text(
                              'Professional',
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              )),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isPressed2 = true;
                            isPressed = false;
                            isPressed1 = false;
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.only(
                              left: 15, right: 15, top: 10, bottom: 10),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [
                                  isPressed2
                                      ? app5.withOpacity(0.6)
                                      : Colors.grey.shade200,
                                  isPressed2
                                      ? app.withOpacity(0.2)
                                      : Colors.grey.shade200,
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: Text(
                              'Documents',
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              )),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                if (isPressed == true) personalDetails(),
                if (isPressed1 == true) professionalDetails(),
                if (isPressed2 == true) documents(),
              ],
            ),
          )
        ],
      ),
    ));
  }
  // to show teacher personalDetails

  personalDetails() {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: personals.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: SizedBox(
            width: 200,
            child: Text(
              personals[index].title,
              style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              )),
            ),
          ),
          subtitle: SizedBox(
            width: 200,
            child: Text(
              personals[index].subtitle,
              style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.black)),
            ),
          ),
        );
      },
    );
  }
  // to show teacher professionalDetails

  professionalDetails() {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: professional.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: SizedBox(
            width: 200,
            child: Text(
              professional[index].title,
              style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              )),
            ),
          ),
          subtitle: SizedBox(
            width: 200,
            child: Text(
              professional[index].subtitle,
              style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.black)),
            ),
          ),
        );
      },
    );
  }
  // to show teacher documents

  documents() {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: document.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.grey[200],
            child: const Icon(
              Icons.terminal_rounded,
              color: Colors.black,
            ),
          ),
          title: Text(
            document[index].title,
            style: GoogleFonts.poppins(
                textStyle: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            )),
          ),
          trailing: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.sim_card_download_outlined),
          ),
        );
      },
    );
  }
}
// to show data of  professionalDetails

class Professional {
  String title;
  String subtitle;

  Professional({
    required this.title,
    required this.subtitle,
  });
}
// to show data of  Documents

class Documents {
  String title;
  Documents({required this.title});
}
