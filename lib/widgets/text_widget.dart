// ignore_for_file: prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String? text;
  final double? fontsize;
  final FontWeight? fontWeight;

  final Color? color;

  TextWidget({this.text, this.fontsize, this.fontWeight, this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style: TextStyle(
        fontSize: fontsize,
        color: color,
        fontWeight: fontWeight,
      ),
    );
  }
}
