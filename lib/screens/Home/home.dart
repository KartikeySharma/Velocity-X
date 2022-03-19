import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:velocityx/assets/custom_icons_icons.dart';
import 'package:velocityx/shared/TaskTile.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var _bottomNavIndex = 0; //default index of a first screen

    final iconList = <IconData>[
      CustomIcons.home,
      CustomIcons.bookmark,
      CustomIcons.folder,
      CustomIcons.profile,
    ];
    return Container(
        child: Scaffold(
      body: Column(
        children: [
          TaskTile(task_name: 'Task One' ,assigned_by:'John Doe',due_date:'23/10'),
        ],
      ),
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
                  onPressed: () {}, icon: Icon(CustomIcons.search_1))),
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
              child:
                  IconButton(onPressed: () {}, icon: Icon(CustomIcons.bell))),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromRGBO(71, 132, 241, 1.0),
        child: Icon(
          Icons.qr_code_scanner_sharp,
          color: Colors.black,
        ),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        backgroundColor: const Color.fromRGBO(71, 132, 241, 1.0),
        icons: iconList,
        activeIndex: _bottomNavIndex,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.verySmoothEdge,
        leftCornerRadius: 32,
        rightCornerRadius: 32,
        onTap: (index) => setState(() => _bottomNavIndex = index),
      ),
    ));
  }
}
