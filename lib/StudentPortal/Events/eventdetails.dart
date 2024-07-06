import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_management_system/colors/color.dart';

class EventDetails extends StatefulWidget {
  const EventDetails({super.key});

  @override
  State<EventDetails> createState() => _EventDetailsState();
}

class _EventDetailsState extends State<EventDetails> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      //     to show event details
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.topLeft,
            height: size.height / 2.5,
            width: size.width,
            decoration: BoxDecoration(color: grey),
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 15),
              child: IconButton(
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: white,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, bottom: 10, top: 10),
            child: Row(
              children: [
                Icon(
                  Icons.access_time,
                  color: app,
                  size: 20,
                ),
                Text(
                  '09 Mar 21, 09:00 AM',
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: app,
                  )),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 10.0,
              bottom: 10,
            ),
            child: Text(
              'Sleepover Night',
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                decoration: TextDecoration.none,
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: black,
              )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 10.0,
              bottom: 10,
            ),
            child: Text(
              'A Sleepover is a great treat for kids.Many school uses such an event as the culminating activity of the School year mdmn djhdjhjss sjhjjsd jsxhzjhjxz xbygxjxhgxsd7st hsgg ghsgbyndsdm ndndn ndnnd ndnnd ndnnd ndnnd ndndn dndnnd dnddhdj djdjndndn nddnnd ndfbfbf dbdbdbdd ndn dbdnd djdjd djdjdjj f dfjnfnf f f eidfkfknsd jndmnd jndmnd jnsdmc xjnsmdnmnd jdnsmd jcxnmcnxc ncnmnmcnc jncnmznc jnmznmcnc jncmznmnc ncmncmcnmzx nmzncmnmznc mncmnmxncmnxc mcncmnxcmnmxc  ',
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                decoration: TextDecoration.none,
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: grey,
              )),
            ),
          ),
        ],
      ),
    ));
  }
}
