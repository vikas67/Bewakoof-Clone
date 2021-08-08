import 'package:flutter/material.dart';

class TabWidget extends StatelessWidget {
  final String text;
  final double fontsize;
  

  const TabWidget({Key? key, required this.text, required this.fontsize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Tab(
        child: Text(
          text,
          style: TextStyle(
              color: Colors.black87, fontSize: fontsize, letterSpacing: 0.6),
        ),
      ),
    );
  }
}
