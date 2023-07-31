// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:ticket/const/color.dart';

class CustomText extends StatelessWidget {
  String title;
  FontWeight? fontWeight;
  Color? textColor;
  double? textSize;
  TextAlign? textAlign;
  CustomText({
    Key? key,
    required this.title,
    this.fontWeight = FontWeight.w700,
    this.textColor,
    this.textSize,
    this.textAlign=TextAlign.center
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: textAlign,
      style: TextStyle(
        color: textColor,
        fontSize: textSize,
        fontWeight: fontWeight,
      ),
    );
  }
}
