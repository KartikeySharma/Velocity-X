import 'package:flutter/material.dart';
import 'package:velocityx/screens/Home/HomeComponents/BottomNavBar.dart';

import '../../assets/custom_icons_icons.dart';
import '../Home/HomeComponents/FloatingButton.dart';

class Scanner extends StatefulWidget {
  const Scanner({Key? key}) : super(key: key);

  @override
  State<Scanner> createState() => _ScannerState();
}

class _ScannerState extends State<Scanner> {
  var bottomNavIndex = 0;
  bool floatingActive = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(36, 36, 36, 1.0),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(36,  36, 36, 1.0),
          centerTitle: true,
          title: Text("Scan QR Code"),
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
                    onPressed: () {}, icon: Icon(CustomIcons.bell))),
          ],
            ),

        body: Row(
          // mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Container(
                margin: EdgeInsets.all(15.0),
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
                    onPressed: () {},
                    icon: Icon(Icons.supervised_user_circle),
                    color: Colors.blue,
              ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Container(
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
                  onPressed: () {},
                  icon: Icon(Icons.note_alt),
                  color: Colors.blue,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Container(
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
                  onPressed: () {}, 
                  icon: Icon(Icons.notes_sharp),
                  color: Colors.blue,
                ),
              ),
            ),

          ],
        ),
        floatingActionButton: FloatingButton(
          floatingActive: floatingActive,
        ),
        floatingActionButtonLocation:
        FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomNavBar(
          bottomNavIndex: bottomNavIndex,
          floatingActive: floatingActive,
        ),
        ),
      );
  }
}
