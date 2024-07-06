import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_management_system/StudentPortal/Events/eventdetails.dart';
import 'package:school_management_system/colors/color.dart';

class Event extends StatefulWidget {
  const Event({super.key});

  @override
  State<Event> createState() => _EventState();
}

class _EventState extends State<Event> {
  // to show list of events
  List<Events> events = [
    Events(
        time: '06 Jan 21, 09:00 AM',
        description:
            'A Sleepover is a great treat for kids.Many school uses such an event as the culminating activity of the School year ',
        event: 'Sleepover Night'),
    Events(
        time: '08 Feb 21, 09:00 AM',
        description:
            'A Sleepover is a great treat for kids.Many school uses such an event as the culminating activity of the School year ',
        event: 'Fishing Tournament'),
    Events(
        time: '09 Mar 21, 09:00 AM',
        description:
            'A Sleepover is a great treat for kids.Many school uses such an event as the culminating activity of the School year ',
        event: 'Rhyme Time:A Night of Poetry'),
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
          'Events & Programs',
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
      // to show the events

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
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: events.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const EventDetails(),
                        ));
                  },
                  child: Container(
                    padding: const EdgeInsets.only(top: 10.0, bottom: 10),
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: black.withOpacity(0.3))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Text(
                            events[index].event,
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: black,
                            )),
                          ),
                        ),
                        ListTile(
                          leading: Container(
                            height: 80,
                            width: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: grey),
                            child: const Text(''),
                          ),
                          title: Row(
                            children: [
                              Icon(
                                Icons.access_time,
                                size: 20,
                                color: app5,
                              ),
                              Text(
                                events[index].time,
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: app5,
                                )),
                              ),
                            ],
                          ),
                          subtitle: Text(
                            events[index].description,
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                              color: grey,
                            )),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    ));
  }
}

// to show the data of events
class Events {
  String event;
  String time;
  String description;
  Events({required this.time, required this.description, required this.event});
}
