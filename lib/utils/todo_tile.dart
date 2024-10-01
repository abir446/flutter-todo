import 'package:flutter/material.dart';

class TodoTile extends StatelessWidget {
  final String taskName;
  final bool isComplete;
  final Function(bool?)? onChanged;

  const TodoTile(
      {super.key,
      required this.taskName,
      required this.isComplete,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
     
      child: Container(
        
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: Colors.yellow, borderRadius: BorderRadius.circular(10)),
            child: Row(
          children: [
            Checkbox(value: isComplete, onChanged: onChanged, activeColor: Colors.black,),
            Text(taskName,
            style: TextStyle(
              decoration: isComplete ? TextDecoration.lineThrough : TextDecoration.none
            ),),
          ],
        ),
      ),
    );
  }
}
