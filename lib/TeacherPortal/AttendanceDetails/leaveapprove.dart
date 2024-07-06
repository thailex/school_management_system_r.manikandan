import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_management_system/colors/color.dart';

class ApproveLeave extends StatefulWidget {
  const ApproveLeave({super.key});

  @override
  State<ApproveLeave> createState() => _ApproveLeaveState();
}

class _ApproveLeaveState extends State<ApproveLeave> {
  // to show data of leave forms
  List<Leave> leave = [
    Leave(
        name: 'Hendry Adams',
        rollNo: 'Class 8, Roll no - 43',
        image: '',
        notes:
            "Hello I'm not feeling well and need to take 2 days of sick leave.I included my doctor's note for your review.ThankYou for your understanding.",
        documentName: 'Sick Leave document.pdf',
        color: app12.withOpacity(0.4)),
    Leave(
        name: 'Mari Selvam',
        rollNo: 'Class 8, Roll no - 43',
        image: '',
        notes:
            "Hello I'm not feeling well and need to take 2 days of sick leave.I included my doctor's note for your review.ThankYou for your understanding.",
        documentName: 'Sick Leave document.pdf',
        color: app13.withOpacity(0.4)),
    Leave(
        name: 'Manikandan',
        rollNo: 'Class 8, Roll no - 43',
        image: '',
        notes:
            "Hello I'm not feeling well and need to take 2 days of sick leave.I included my doctor's note for your review.ThankYou for your understanding.",
        documentName: 'Sick Leave document.pdf',
        color: app15.withOpacity(0.4)),
  ];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: Text(
          'Leave Form',
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
      // to approve student leave
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
              child: leaves())
        ],
      ),
    ));
  }

  // to show leave forms for approval
  Widget leaves() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 18),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 3,
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: leave[index].color,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(leave[index].image),
                    ),
                    title: Text(
                      leave[index].name,
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      )),
                    ),
                    subtitle: Text(
                      leave[index].rollNo,
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      )),
                    ),
                    trailing: GestureDetector(
                      onTap: () {
                        setState(() {
                          leave[index].approved = !leave[index].approved;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.only(
                            left: 20, right: 20, top: 10, bottom: 10),
                        decoration: BoxDecoration(
                            gradient: (leave[index].approved)
                                ? const LinearGradient(
                                    colors: [Colors.white, Colors.white])
                                : LinearGradient(colors: [appColor, appColor2]),
                            borderRadius: BorderRadius.circular(13),
                            border: Border.all(
                                color: (leave[index].approved)
                                    ? Colors.black.withOpacity(0.2)
                                    : Colors.transparent)),
                        child: Text(
                          (leave[index].approved) ? 'Approved' : 'Approve',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                            color: (leave[index].approved)
                                ? Colors.black
                                : Colors.white,
                          )),
                        ),
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 5.0, left: 15, right: 15, bottom: 5),
                  child: Text(
                    'Notes :',
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    )),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(bottom: 5.0, left: 15, right: 15),
                  child: Text(
                    leave[index].notes,
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                    )),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 15.0, left: 15, right: 15),
                  child: Text(
                    'Attachment :',
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    )),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 5.0, left: 10, right: 10),
                  padding: const EdgeInsets.only(top: 0, bottom: 0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      border: Border.all(color: Colors.black.withOpacity(0.2))),
                  child: ListTile(
                    leading: Icon(
                      Icons.file_present_sharp,
                      color: appColor2,
                    ),
                    title: Text(
                      leave[index].documentName,
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      )),
                    ),
                    trailing: const Icon(
                      Icons.cloud_download_sharp,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

// to show data of leave
class Leave {
  bool approved = false;
  String image;
  String name;
  String rollNo;
  String notes;
  String documentName;
  Color color;
  Leave(
      {required this.name,
      required this.rollNo,
      required this.image,
      required this.notes,
      required this.documentName,
      required this.color});
}
