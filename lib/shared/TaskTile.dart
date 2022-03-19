import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class TaskTile extends StatelessWidget {

  final String task_name, assigned_by, due_date;

  TaskTile({required this.task_name, required this.assigned_by, required this.due_date});

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
                  task_name,
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
                SizedBox(height: 3,),
                Text(
                  'Assigned by: $assigned_by',
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
                  'Due by: $due_date',
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
