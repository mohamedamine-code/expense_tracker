import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

TextStyle mystyle({required Color? color,required FontWeight? fontWeight, required double? fontSize}) {
  return TextStyle(
    fontSize: fontSize,
    fontWeight: fontWeight ?? FontWeight.normal,
    color: color ?? Colors.black,
  );
}

Color balck = Colors.black;
FontWeight bold = FontWeight.bold;
