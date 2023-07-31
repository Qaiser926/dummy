
// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HeigthSize extends StatelessWidget {
 double height;
   HeigthSize({
    Key? key,
    required this.height,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(height: Get.size.height*height,);
  }
}