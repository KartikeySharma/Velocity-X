import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class TaskTile extends StatelessWidget {
  const TaskTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xFF252424),
      shape: StadiumBorder(
        side: BorderSide(
          color: Color(0xFF4784F1),
          width: 2.0,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(6.0,12,6.0,12  ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              Icons.circle,
              color: Color(0xFFA2B9E4) ,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Task One",
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
                SizedBox(height: 3,),
                Text(
                  "Assigned by: John Doe",
                  style: TextStyle(
                      color: Color(0xFFA2B9E4)
                  ),
                ),

              ],
            ),
            Column(

              children: [
                SizedBox(height: 18,),
                Text(
                  "Due by: dd/mm",
                  style: TextStyle(
                      color: Color(0xFFA2B9E4)
                  ),
                ),
              ],
            ),


          ],
        ),
      )
    );
  }
}
