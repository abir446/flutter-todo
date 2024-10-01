import 'package:flutter/material.dart';
import 'package:todolist/utils/button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  final VoidCallback onSave;
  final VoidCallback onCancel;
  const DialogBox({super.key, required this.controller, required this.onSave, required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow,
      title: const Text('Add To do'),
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Learn React'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MyButton(name: 'Save', onPressed: onSave),
                MyButton(name: 'Cancel', onPressed: onCancel),
              ],
            )
          ],
        ),
      ),
    );
  }
}
