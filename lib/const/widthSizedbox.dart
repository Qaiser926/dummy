import 'package:flutter/material.dart';
import 'package:get/get.dart';

class widthSize extends StatelessWidget {
 double width;
   widthSize({
    Key? key,
    required this.width,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(width: Get.size.width*width,);
  }
}