import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:velocityx/assets/custom_icons_icons.dart';
import 'package:velocityx/screens/Home/HomeComponents/BottomNavBar.dart';
import 'package:velocityx/screens/Home/HomeComponents/FloatingButton.dart';
import 'package:velocityx/shared/TaskTile.dart';
import 'package:velocityx/shared/category_tile.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var bottomNavIndex = 0; //default index of a first screen

  bool floatingActive = false;
  final Tasks = <TaskTile>[
    TaskTile(task_name: 'Task One', assigned_by: 'John Doe', due_date: '23/10'),
    TaskTile(task_name: 'Task One', assigned_by: 'John Doe', due_date: '23/10'),
    TaskTile(task_name: 'Task One', assigned_by: 'John Doe', due_date: '23/10'),
    TaskTile(task_name: 'Task One', assigned_by: 'John Doe', due_date: '23/10'),
    TaskTile(task_name: 'Task One', assigned_by: 'John Doe', due_date: '23/10'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
            backgroundColor: Color.fromRGBO(36, 36, 36, 1.0),
            appBar: AppBar(
              backgroundColor: Color.fromRGBO(36, 36, 36, 1.0),
              elevation: 0.0,
              actions: <Widget>[
                Container(
                    margin: EdgeInsets.only(right: 15.0),
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(36, 36, 36, 1.0),
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blue,
                            blurRadius: 5.0,
                          ),
                        ]),
                    child: IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/MetaData');
                        }, icon: Icon(CustomIcons.search_1))),
                Container(
                    margin: EdgeInsets.only(right: 15.0),
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(36, 36, 36, 1.0),
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blue,
                            blurRadius: 5.0,
                          ),
                        ]),
                    child: IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/FileInformation');
                        }, icon: Icon(CustomIcons.bell))),
              ],
            ),
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CategoryTile(
                            title: 'Urgent Submission',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CategoryTile(
                            title: 'Urgent Submission',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CategoryTile(
                            title: 'Urgent Submission',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CategoryTile(
                            title: 'Urgent Submission',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CategoryTile(
                            title: 'Urgent Submission',
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    "Today's task",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      TaskTile(
                          task_name: "task_name",
                          assigned_by: "assigned_by",
                          due_date: "due_date"),
                      TaskTile(
                          task_name: "task_name",
                          assigned_by: "assigned_by",
                          due_date: "due_date"),
                      TaskTile(
                          task_name: "task_name",
                          assigned_by: "assigned_by",
                          due_date: "due_date"),
                      TaskTile(
                          task_name: "task_name",
                          assigned_by: "assigned_by",
                          due_date: "due_date"),
                      TaskTile(
                          task_name: "task_name",
                          assigned_by: "assigned_by",
                          due_date: "due_date"),
                      TaskTile(
                          task_name: "task_name",
                          assigned_by: "assigned_by",
                          due_date: "due_date"),
                      TaskTile(
                          task_name: "task_name",
                          assigned_by: "assigned_by",
                          due_date: "due_date"),
                      TaskTile(
                          task_name: "task_name",
                          assigned_by: "assigned_by",
                          due_date: "due_date"),
                    ],
                  ),
                ],
              ),
            ),
            floatingActionButton: FloatingButton(
              floatingActive: floatingActive,
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            bottomNavigationBar: BottomNavBar(
              bottomNavIndex: bottomNavIndex,
              floatingActive: floatingActive,
            )));
  }
}
