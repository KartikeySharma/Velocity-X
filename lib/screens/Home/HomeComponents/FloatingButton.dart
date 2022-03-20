import 'package:flutter/material.dart';

class FloatingButton extends StatefulWidget {
  bool floatingActive;
  FloatingButton({Key? key, required this.floatingActive}) : super(key: key);

  @override
  State<FloatingButton> createState() => _FloatingButtonState();
}

class _FloatingButtonState extends State<FloatingButton> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Color.fromRGBO(71, 132, 241, 1.0),
      child: Icon(
        Icons.qr_code_scanner_sharp,
        color: widget.floatingActive ? Colors.white : Colors.black,
      ),
      onPressed: () {
        widget.floatingActive = !widget.floatingActive;
        setState(() {});
        // _bottomNavIndex = 5;
      },
    );
  }
}
