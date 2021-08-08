import 'package:flutter/material.dart';

class IconButtonWidgets extends StatelessWidget {
  final IconData icon;
  final Function() onPressed;

  const IconButtonWidgets({Key? key, required this.icon, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(icon),
        color: Colors.black87,
      ),
    );
  }
}
