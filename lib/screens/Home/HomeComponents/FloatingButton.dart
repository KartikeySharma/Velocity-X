import 'package:flutter/material.dart';
import 'package:velocityx/screens/Scanner/qr_scan_page.dart';

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
        // Navigator.pushNamed(context, '/Scanner');
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => ScanQRCode()));

        setState(() {});
        // _bottomNavIndex = 5;
      },
    );
  }
}
