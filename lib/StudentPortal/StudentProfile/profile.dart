import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_management_system/Authentication/login.dart';
import 'package:school_management_system/StudentPortal/ChangePassword/changepassword.dart';
import 'package:school_management_system/StudentPortal/ReportCard/teacherreportcard.dart';
import 'package:school_management_system/StudentPortal/StudentProfile/editprofile.dart';
import 'package:school_management_system/StudentPortal/StudentProfile/myprofilestudent.dart';
import 'package:school_management_system/TeacherPortal/TeacherProfile/TermsConditions&Policies/privacypolicy.dart';
import 'package:school_management_system/TeacherPortal/TeacherProfile/TermsConditions&Policies/terms&conditions.dart';
import 'package:school_management_system/TeacherPortal/TeacherProfile/myprofile.dart';
import 'package:school_management_system/colors/color.dart';

class StudentProfile extends StatefulWidget {
  const StudentProfile({super.key});
  @override
  State<StudentProfile> createState() => _StudentProfileState();
}

class _StudentProfileState extends State<StudentProfile> {
  // to show list of profile
  List<Profile> profile = [
    Profile(title: 'My Profile', icon: Icons.person),
    Profile(title: 'Change Password', icon: Icons.change_circle_outlined),
    Profile(title: 'Terms & Conditions', icon: Icons.file_open_outlined),
    Profile(title: 'Privacy Policy', icon: Icons.privacy_tip_outlined),
    Profile(title: 'Settings', icon: Icons.settings),
    Profile(title: 'Logout', icon: Icons.logout),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      //     to show list of profile
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Center(
              child: Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: CircleAvatar(
                  maxRadius: 50,
                  backgroundImage: AssetImage('assets/Ellipse 55.png'),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Text(
                  'Mari Selvam',
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  )),
                ),
              ),
            ),
            Center(
              child: Text(
                'Class XI - B | Roll no : 04',
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w700,
                  color: Colors.grey,
                )),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const EditProfileStudent(),
                    ));
              },
              child: Container(
                padding: const EdgeInsets.all(15),
                margin: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      app5.withOpacity(0.6),
                      app.withOpacity(0.2),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: Text(
                    'Edit Profile',
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: black,
                    )),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 1.8,
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: profile.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      (index == 0)
                          ? Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const MyProfileStudent(),
                              ))
                          : (index == 1)
                              ? Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const ChangePassword(),
                                  ))
                              : (index == 2)
                                  ? Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const TermsConditions(),
                                      ))
                                  : (index == 3)
                                      ? Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const PrivacyPolicy(),
                                          ))
                                      : bottomSheet();
                    },
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.grey[200],
                        child: Icon(
                          profile[index].icon,
                          color: (index == 5) ? Colors.red : Colors.black,
                        ),
                      ),
                      title: Text(
                        profile[index].title,
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: (index == 5) ? Colors.red : Colors.black,
                        )),
                      ),
                      trailing: const Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Colors.black,
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    ));
  }

  //to show bottomSheet for logout
  bottomSheet() {
    return showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(builder: (context, setState) {
          return SingleChildScrollView(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Text(
                  'Logout',
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.red,
                  )),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                width: 350,
                child: Divider(
                  height: 30,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30.0),
                child: Text(
                  "Are you sure you want to logout? ",
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                  )),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                  width: 350,
                  child: Divider(
                    height: 20,
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.only(
                          left: 30, right: 30, top: 15, bottom: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.red.shade50),
                      child: Text(
                        'Cancel',
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: black,
                        )),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Login(),
                          ));
                    },
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.only(
                          left: 30, right: 30, top: 15, bottom: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        gradient: LinearGradient(colors: [
                          app5.withOpacity(0.6),
                          app.withOpacity(0.2),
                        ]),
                      ),
                      child: Text(
                        'Yes,Logout',
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: black,
                        )),
                      ),
                    ),
                  )
                ],
              )
            ],
          ));
        });
      },
    );
  }
}

class Profile {
  String title;
  IconData icon;
  Profile({required this.title, required this.icon});
}
