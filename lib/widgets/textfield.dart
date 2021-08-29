import 'dart:ffi';

import 'package:flutter/material.dart';

class TextContainer extends StatelessWidget {
  final Color labelcolor, curscolor;
  final bool cursor;
  final String labtext;
  final Function onchange;
  const TextContainer({
    Key? key,
    this.curscolor = Colors.black,
    this.labelcolor = Colors.grey,
    this.cursor = true,
    required this.labtext,
    required this.onchange,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: TextField(
        textAlign: TextAlign.right,
        onTap: () {},
        showCursor: cursor,
        decoration: InputDecoration(
          labelText: labtext,
          labelStyle: TextStyle(
            color: labelcolor,
          ),
        ),
        cursorColor: curscolor,
      ),
    );
  }
}
