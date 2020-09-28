import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:planner_edu/services/tasks.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:planner_edu/services/Hexcolor.dart';
import 'package:planner_edu/components/todo-item.dart';

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
        time: '11:00-13:00',
        isCompleted: false),
    Task(
        title: 'Make Changes to the New site design again',
        description: 'It is what it says',
        category: 'work',
        date: '19 NOV 2019',
        time: '12:00-14:00',
        isCompleted: true),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          color: HexColor("#222429"),
          backgroundColor: Colors.white,
          items: <Widget>[
            Icon(
              Icons.home,
              size: 30,
              color: Colors.white,
            ),
            Icon(
              Icons.list,
              size: 30,
              color: Colors.white,
            ),
            Icon(
              Icons.home,
              size: 30,
              color: Colors.white,
            ),
          ],
          animationDuration: Duration(milliseconds: 400),
          height: 70,
          onTap: (index) {
            //Handle button tap
          },
        ),
        backgroundColor: Colors.white,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              title: Text('TASKS LIST',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        letterSpacing: 2,
                        color: Colors.grey[400],
                        fontWeight: FontWeight.w700,
                        fontSize: 17),
                  )),
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(60.0),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                  child: Row(
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
                ),
              ),
              floating: true,
              pinned: false,
              snap: true,
            ),
            SliverList(
                delegate: SliverChildBuilderDelegate((context, index) {
              print(tasks[index].isCompleted);
              return Padding(
                padding: const EdgeInsets.fromLTRB(15, 2.5, 15, 2.5),
                child: TodoItem(
                  isCompleted: tasks[index].isCompleted,
                  title: tasks[index].title,
                  date: tasks[index].date,
                  time: tasks[index].time,
                ),
              );
            }, childCount: tasks.length)),
          ],
        ));
  }
}
