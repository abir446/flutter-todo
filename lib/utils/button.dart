import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String name;
  final VoidCallback onPressed;
  const MyButton({super.key, required this.name, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      textColor: const Color.fromARGB(255, 124, 115, 87),
      onPressed: onPressed,
      color: Colors.yellow[300],
      elevation: 0,
      hoverElevation: 1,
      hoverColor: Colors.amber[500],
      child: Text(name),
    );
  }
}
