// ignore_for_file: sort_child_properties_last, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ticket/const/customText.dart';
import 'package:ticket/const/heightSizedbox.dart';
import 'package:ticket/screen/home.dart';
import 'package:ticket/screen/withdrawPage.dart';

class EnterAmountPage extends StatefulWidget {
  const EnterAmountPage({super.key});

  @override
  State<EnterAmountPage> createState() => _EnterAmountPageState();
}

class _EnterAmountPageState extends State<EnterAmountPage> {
  var result = '';
  var output = '';
  var operand = '';
  var num1 = 0;
  var num2 = 0;
  var name = 'qaiser';
  calculation(var title) {
    if (title == 'Clear') {
      result = '';
      operand = '';
      num1 = 0;
      num2 = 0;
    } else {
      setState(() {
        result = result + title;
      });
    }
    setState(() {
      output = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            leading: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: Icon(
                  Icons.close,
                  color: Colors.black.withOpacity(0.8),
                  size: Get.size.height * 0.025,
                )),
            backgroundColor: Colors.white,
            elevation: 0.5,
            title: CustomText(
              title: "Ggg",
              textColor: Colors.black,
              fontWeight: FontWeight.w500,
            )),
        body: Column(
          children: [
            HeigthSize(height: 0.1),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: Get.size.width*0.03),
              child: Row(
                children: [
                  CustomText(
                    title: "Quantity",
                    textSize: Get.size.height*0.019,
                    textColor: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ],
              ),
            ),
            HeigthSize(height: 0.01),
            Padding(
               padding:  EdgeInsets.symmetric(horizontal: Get.size.width*0.03),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      constraints: BoxConstraints(maxWidth: Get.size.width * 0.8),
                      child: Text(
                        result,
                        maxLines: 1,
                        textAlign: TextAlign.right,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          result = '';
                        });
                      },
                      icon: Icon(
                        Icons.backspace,
                        color: Colors.black.withOpacity(0.6),
                      ))
                ],
              ),
            ),
            HeigthSize(height: 0.04),
            SizedBox(
              height: Get.size.height * 0.6,
              child: Column(
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      child: Column(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Box('7', Colors.grey.shade800,
                                    BoxShape.circle),
                                Box('8', Colors.grey.shade800,
                                    BoxShape.circle),
                                Box('9', Colors.grey.shade800,
                                    BoxShape.circle),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                Box('4', Colors.grey.shade800,
                                    BoxShape.circle),
                                Box('5', Colors.grey.shade800,
                                    BoxShape.circle),
                                Box('6', Colors.grey.shade800,
                                    BoxShape.circle),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                Box('1', Colors.grey.shade800,
                                    BoxShape.circle),
                                Box('2', Colors.grey.shade800,
                                    BoxShape.circle),
                                Box('3', Colors.grey.shade800,
                                    BoxShape.circle),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                Box('.', Colors.grey.shade800,
                                    BoxShape.circle),
                                Box('0', Colors.grey.shade800,
                                    BoxShape.circle),
                           
                                Expanded(
                                  child: InkWell(
                                    onTap: () {
                                      Get.to(WithDrawPage(amount: result),
                                          transition: Transition.fadeIn);
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.grey.shade300,
                                              width: 0.5)),
                                      // decoration: BoxDecoration(color: color),
                                      child: const Center(
                                          child: Text("OK",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 30))),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }

  Box(var text, Color color, BoxShape s) {
    return Expanded(
      child: InkWell(
        onTap: () {
          calculation(text);
        },
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300, width: 0.5)),
          // decoration: BoxDecoration(color: color),
          child: Center(
              child: Text(text,
                  style: TextStyle(color: Colors.black, fontSize: 30))),
        ),
      ),
    );
  }


}
