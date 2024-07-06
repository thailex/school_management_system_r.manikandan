import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_management_system/colors/color.dart';

class EditProfileTeacher extends StatefulWidget {
  const EditProfileTeacher({super.key});

  @override
  State<EditProfileTeacher> createState() => _EditProfileTeacherState();
}

class _EditProfileTeacherState extends State<EditProfileTeacher> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 80,
          title: Text(
            'Edit Profile',
            style: GoogleFonts.poppins(
                textStyle: TextStyle(
              decoration: TextDecoration.none,
              fontSize: 17,
              fontWeight: FontWeight.w600,
              color: black,
            )),
          ),
          centerTitle: true,
          actions: [
            Container(
                margin: EdgeInsets.only(right: 15),
                padding: const EdgeInsets.only(
                    left: 10, right: 10, top: 5, bottom: 5),
                decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(
                      Icons.check,
                      color: Colors.black,
                      size: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Text(
                        'Done',
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 10,
                          fontWeight: FontWeight.w600,
                          color: black,
                        )),
                      ),
                    ),
                  ],
                )),
          ],
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
        // to edit teacher profile
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
                  children: [
                    Container(
                      margin: const EdgeInsets.all(15),
                      padding: const EdgeInsets.only(
                          left: 5, right: 5, bottom: 10, top: 10),
                      decoration: BoxDecoration(
                        border: Border.all(color: app7.withOpacity(0.9)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ListTile(
                        leading: Container(
                          height: 55,
                          width: 55,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: grey.withOpacity(0.5)),
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
                          'English Teacher',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                            color: grey,
                          )),
                        ),
                        trailing: Padding(
                          padding: const EdgeInsets.only(bottom: 40.0),
                          child: IconButton(
                            icon: Icon(
                              Icons.camera_alt_sharp,
                              color: grey,
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ),
                    Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(
                                  width: 160,
                                  child: TextFormField(
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                        color: appColor,
                                      )),
                                      enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                        color: appColor,
                                      )),
                                      labelText: 'Aadhaar Number',
                                      labelStyle: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                        color: grey,
                                      )),
                                      suffixIcon: IconButton(
                                        icon: Icon(
                                          Icons.lock,
                                          color: grey,
                                          size: 15,
                                        ),
                                        onPressed: () {
                                          setState(() {});
                                        },
                                      ),
                                    ),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter your Aadhaar Number';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                                SizedBox(
                                  width: 160,
                                  child: TextFormField(
                                    keyboardType: TextInputType.datetime,
                                    decoration: InputDecoration(
                                      focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                        color: appColor,
                                      )),
                                      enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                        color: appColor,
                                      )),
                                      labelText: 'Academic Year',
                                      labelStyle: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                        color: grey,
                                      )),
                                      suffixIcon: IconButton(
                                        icon: Icon(
                                          Icons.lock,
                                          color: grey,
                                          size: 15,
                                        ),
                                        onPressed: () {
                                          setState(() {});
                                        },
                                      ),
                                    ),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter your Academic Year';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(
                                  width: 160,
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
                                      labelText: 'Admission Class',
                                      labelStyle: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                        color: grey,
                                      )),
                                      suffixIcon: IconButton(
                                        icon: Icon(
                                          Icons.lock,
                                          color: grey,
                                          size: 15,
                                        ),
                                        onPressed: () {
                                          setState(() {});
                                        },
                                      ),
                                    ),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter your Admission Class';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                                SizedBox(
                                  width: 160,
                                  child: TextFormField(
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                        color: appColor,
                                      )),
                                      enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                        color: appColor,
                                      )),
                                      labelText: 'Old Admission No',
                                      labelStyle: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                        color: grey,
                                      )),
                                      suffixIcon: IconButton(
                                        icon: Icon(
                                          Icons.lock,
                                          color: grey,
                                          size: 15,
                                        ),
                                        onPressed: () {
                                          setState(() {});
                                        },
                                      ),
                                    ),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter your Old Admission No';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(
                                  width: 160,
                                  child: TextFormField(
                                    keyboardType: TextInputType.datetime,
                                    decoration: InputDecoration(
                                      focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                        color: appColor,
                                      )),
                                      enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                        color: appColor,
                                      )),
                                      labelText: 'Date of Admission',
                                      labelStyle: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                        color: grey,
                                      )),
                                      suffixIcon: IconButton(
                                        icon: Icon(
                                          Icons.lock,
                                          color: grey,
                                          size: 15,
                                        ),
                                        onPressed: () {
                                          setState(() {});
                                        },
                                      ),
                                    ),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter your Date of Admission';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                                SizedBox(
                                  width: 160,
                                  child: TextFormField(
                                    keyboardType: TextInputType.datetime,
                                    decoration: InputDecoration(
                                      focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                        color: appColor,
                                      )),
                                      enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                        color: appColor,
                                      )),
                                      labelText: 'Date of Birth',
                                      labelStyle: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                        color: grey,
                                      )),
                                      suffixIcon: IconButton(
                                        icon: Icon(
                                          Icons.lock,
                                          color: grey,
                                          size: 15,
                                        ),
                                        onPressed: () {
                                          setState(() {});
                                        },
                                      ),
                                    ),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter your Date of Birth';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                  color: appColor,
                                )),
                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                  color: appColor,
                                )),
                                labelText: 'Parent Mail Id',
                                labelStyle: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: grey,
                                )),
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    Icons.lock,
                                    color: grey,
                                    size: 15,
                                  ),
                                  onPressed: () {
                                    setState(() {});
                                  },
                                ),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your Parent Mail Id';
                                }
                                return null;
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
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
                                labelText: 'Father Name',
                                labelStyle: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: grey,
                                )),
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    Icons.lock,
                                    color: grey,
                                    size: 15,
                                  ),
                                  onPressed: () {
                                    setState(() {});
                                  },
                                ),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your Father Name';
                                }
                                return null;
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
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
                                labelText: 'Mother Name',
                                labelStyle: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: grey,
                                )),
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    Icons.lock,
                                    color: grey,
                                    size: 15,
                                  ),
                                  onPressed: () {
                                    setState(() {});
                                  },
                                ),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your Mother Name';
                                }
                                return null;
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: TextFormField(
                              keyboardType: TextInputType.streetAddress,
                              decoration: InputDecoration(
                                focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                  color: appColor,
                                )),
                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                  color: appColor,
                                )),
                                labelText: 'Permanent Address',
                                labelStyle: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: grey,
                                )),
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    Icons.lock,
                                    color: grey,
                                    size: 15,
                                  ),
                                  onPressed: () {
                                    setState(() {});
                                  },
                                ),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your Permanent Address';
                                }
                                return null;
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
