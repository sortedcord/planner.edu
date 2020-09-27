import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:planner_edu/services/tasks.dart';
import 'package:listview_utils/listview_utils.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<Task> tasks = [
    Task(
        title: 'Make Changes to the New site design',
        description: 'It is what it says',
        category: 'work',
        date: '18 NOV 2019',
        time: '11:00-13:00'),
    Task(
        title: 'Make Changes to the New site design again',
        description: 'It is what it says',
        category: 'work',
        date: '19 NOV 2019',
        time: '12:00-14:00'),
    Task(
        title: 'Make Changes to the New site design again',
        description: 'It is what it says',
        category: 'work',
        date: '19 NOV 2019',
        time: '12:00-14:00'),
    Task(
        title: 'Make Changes to the New site design again',
        description: 'It is what it says',
        category: 'work',
        date: '19 NOV 2019',
        time: '12:00-14:00'),
    Task(
        title: 'Make Changes to the New site design again',
        description: 'It is what it says',
        category: 'work',
        date: '19 NOV 2019',
        time: '12:00-14:00'),
    Task(
        title: 'Make Changes to the New site design again',
        description: 'It is what it says',
        category: 'work',
        date: '19 NOV 2019',
        time: '12:00-14:00'),
    Task(
        title: 'Make Changes to the New site design again',
        description: 'It is what it says',
        category: 'work',
        date: '19 NOV 2019',
        time: '12:00-14:00'),
    Task(
        title: 'Make Changes to the New site design again',
        description: 'It is what it says',
        category: 'work',
        date: '19 NOV 2019',
        time: '12:00-14:00'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 50, 20, 0),
          child: ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: tasks.length,
              itemBuilder: (context, index) {
                if (index > 0) {
                  return Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(
                          color: Colors.grey.withOpacity(0.2),
                          width: 1,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(tasks[index].title,
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        fontSize: 23,
                                        fontWeight: FontWeight.w400))),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  tasks[index].date,
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        color: Colors.grey[400],
                                        fontSize: 15),
                                  ),
                                ),
                                Text(
                                  tasks[index].time,
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        color: Colors.grey[400],
                                        fontSize: 15),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ));
                } else {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('TASKS LIST',
                          textAlign: TextAlign.left,
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                letterSpacing: 2,
                                color: Colors.grey[400],
                                fontWeight: FontWeight.w700,
                                fontSize: 17),
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('Home',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    fontSize: 40, fontWeight: FontWeight.w600),
                              )),
                          IconButton(
                            icon: Icon(Icons.edit),
                            onPressed: () {},
                          )
                        ],
                      ),
                    ],
                  );
                }
              }),
        ));
  }
}
