// ignore_for_file: public_member_api_docs, sort_constructors_first, sort_child_properties_last
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:ticket/const/color.dart';
import 'package:ticket/const/customText.dart';
import 'package:ticket/screen/enterAmount.dart';

class NewSalePage extends StatefulWidget {
  const NewSalePage({super.key});

  @override
  State<NewSalePage> createState() => _NewSalePageState();
}

class _NewSalePageState extends State<NewSalePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TColor().backgroundColor,
      // drawer: Drawer(),
      appBar: _appbar(context),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: Get.size.width * 0.03),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // HeigthSize(height: 0.023),
            Container(
              margin: EdgeInsets.only(top: Get.size.height * 0.02),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      decoration: BoxDecoration(
                          border: Border(
                              right: BorderSide(
                                  color: Colors.black45.withOpacity(0.4)))),
                      child: _customContainer("Rs69595", "Total paid")),
                  _customContainer("Rs0", "Change"),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      hintText: "Enter email",
                    ),
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.send,
                      color: Colors.grey,
                    ))
              ],
            ),

            Container(
              margin: EdgeInsets.only(bottom: Get.size.height * 0.02),
              height: Get.size.height * 0.055,
              width: Get.size.width,
              child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    primary: TColor().primaryColor.withOpacity(0.7),
                  ),
                  onPressed: () {
                    Get.to(EnterAmountPage(),transition: Transition.fadeIn);
                  },
                  icon: const Icon(Icons.check),
                  label: const Text("NEW SALE")),
            )
          ],
        ),
      ),
    );
  }

  Container _customContainer(String text, String subText) {
    return Container(
      width: Get.size.width * 0.43,
      height: Get.size.height * 0.08,
      // decoration: BoxDecoration(color: TColor().primaryColor.withOpacity(0.9)),
      child: Center(
          child: Column(
        children: [
          CustomText(
            textAlign: TextAlign.justify,
            title: text,
            textSize: Get.size.height * 0.025,
            fontWeight: FontWeight.normal,
            textColor: Colors.black,
          ),
          SizedBox(
            height: Get.size.height * 0.007,
          ),
          CustomText(
            title: subText,
            textAlign: TextAlign.right,
            fontWeight: FontWeight.normal,
            textSize: Get.size.height * 0.015,
            textColor: Colors.grey,
          ),
        ],
      )),
    );
  }

  AppBar _appbar(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: TColor().backgroundColor,
      leading: IconButton(onPressed: (){
        Get.back();
      }, icon: const Icon(Icons.arrow_back,color: Colors.black,)),
    );
  }
}
