import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CategoryTile extends StatelessWidget {

  String title;
  CategoryTile({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140.0,
      width: 140.0,
        decoration: BoxDecoration(
          border: Border.all(width: 4, color: Color(0xFF4784F1),),
          borderRadius: BorderRadius.all(Radius.circular(45)),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8.0,45,8,5),
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 1.8
              ),
            ),
          ),
        )

    );
  }
}
