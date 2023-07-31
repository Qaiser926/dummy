// ignore_for_file: public_member_api_docs, sort_constructors_first, sort_child_properties_last
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:ticket/const/color.dart';
import 'package:ticket/const/customButton.dart';
import 'package:ticket/const/customText.dart';
import 'package:ticket/const/heightSizedbox.dart';
import 'package:ticket/const/string.dart';
import 'package:ticket/const/widthSizedbox.dart';
import 'package:ticket/screen/newSale.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String dropdownValue = 'Dummy1';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TColor().backgroundColor,
      drawer: Drawer(),
      appBar: _appbar(context),
      body: Column(
        children: [
          HeigthSize(height: 0.03),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  decoration: BoxDecoration(
                      border: Border(
                          right: BorderSide(
                              color: Colors.black45.withOpacity(0.4)))),
                  child: _customContainer("OPEN TICKETS")),
              _customContainer("ChARGE\n 0.00"),
            ],
          ),
          HeigthSize(height: 0.03),
          _dropdownSearch(),
          HeigthSize(height: 0.1),
          Icon(
            Icons.watch_later_outlined,
            color: Colors.grey,
            size: Get.size.height * 0.15,
          ),
          HeigthSize(height: 0.03),
          CustomText(
            title: "Shift is closed",
            textSize: Get.size.height * 0.018,
            textColor: Colors.grey,
          ),
          HeigthSize(height: 0.01),
          CustomText(
            title: "Open a shift to perform sales",
            textSize: Get.size.height * 0.014,
            textColor: Colors.grey,
          ),
          HeigthSize(height: 0.03),
          CustomButton(
            text: "OPEN SHIFT",
            onpress: () {
              Get.to(NewSalePage(),transition: Transition.fadeIn);
            },
          )
        ],
      ),
    );
  }

  Row _dropdownSearch() {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: Get.size.height * 0.065,
            decoration: BoxDecoration(
              color: TColor().white,
              border: Border.all(color: Colors.grey.shade400, width: 1),
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                isExpanded: true,
                // Step 3.
                value: dropdownValue,
                // Step 4.
                items: <String>['Dummy1',"Dummy2"]
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                      value: value,
                      child: CustomText(
                        title: value,
                        textColor: Colors.black54,
                        fontWeight: FontWeight.w500,
                      ));
                }).toList(),
                // Step 5.
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue = newValue!;
                  });
                },
              ),
            ),
          ),
        ),
        Container(
          height: Get.size.height * 0.065,
          decoration: BoxDecoration(
            color: TColor().white,
            border: Border.all(color: Colors.grey.shade400, width: 1),
          ),
          child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.grey.shade500,
              )),
        )
      ],
    );
  }

  Container _customContainer(String text) {
    return Container(
      width: Get.size.width * 0.43,
      height: Get.size.height * 0.08,
      decoration: BoxDecoration(color: TColor().primaryColor.withOpacity(0.9)),
      child: Center(
          child: CustomText(
        title: text,
        textColor: TColor().white.withOpacity(0.7),
      )),
    );
  }

  AppBar _appbar(BuildContext context) {
    return AppBar(
      backgroundColor: TColor().appColor,
      title: Row(
        children: [
          CustomText(
            title: TString().ticket,
            textColor: TColor().white.withOpacity(0.7),
          ),
          widthSize(
            width: 0.04,
          ),
          Container(
            child: Center(
                child: CustomText(
              title: "0",
              fontWeight: FontWeight.normal,
              textColor: TColor().white.withOpacity(0.7),
            )),
            width: Get.size.width * 0.07,
            height: Get.size.height * 0.03,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2),
                border: Border.all(
                    color: TColor().white.withOpacity(0.7), width: 1)),
          )
        ],
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.person_add,
              color: TColor().white.withOpacity(0.7),
            )),
        PopupMenuButton<int>(
          icon: Icon(
            Icons.more_vert,
            color: TColor().white,
          ),
          itemBuilder: (context) => [
            // PopupMenuItem 1
            PopupMenuItem(
              value: 1,
              // row with 2 children
              child: Row(
                children: const [
                  Icon(
                    Icons.abc,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Demo")
                ],
              ),
            ),
            // PopupMenuItem 2
            PopupMenuItem(
              value: 2,
              // row with two children
              child: Row(
                children: const [
                  Icon(Icons.chrome_reader_mode, color: Colors.black),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Demo 2")
                ],
              ),
            ),
          ],
          offset: Offset(0, 10),
          // color: Colors.,
          elevation: 2,
          // on selected we show the dialog box
          onSelected: (value) {
            // if value 1 show dialog
            if (value == 1) {
              _showDialog(context);
              // if value 2 show dialog
            } else if (value == 2) {
              _showDialog(context);
            }
          },
        ),
      ],
    );
  }

  void _showDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Alert!!"),
          content: Text("You are awesome!"),
          actions: [
            MaterialButton(
              child: Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
