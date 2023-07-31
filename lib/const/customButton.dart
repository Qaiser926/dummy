
// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ticket/const/color.dart';
import 'package:ticket/const/customText.dart';

class CustomButton extends StatelessWidget {
String text;
Function() onpress;

  CustomButton({
    Key? key,
    required this.text,
    required this.onpress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: TColor().primaryColor.withOpacity(0.7),
      height: Get.size.height*0.05,
      minWidth: Get.size.width*0.4,
      onPressed: onpress,child: CustomText(title: text,textColor: TColor().white.withOpacity(0.7),));
  }
}