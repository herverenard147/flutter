import 'package:flutter/material.dart';
import 'package:project_test/const/color.dart';
import 'package:project_test/screen/compoments/btnAll.dart';

AppBar OtherAppBar(BuildContext context) => AppBar(
  centerTitle: true,
  title: Text('Details Product'),
  actions: [
    Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Row(
        children: [
          AllBtn(
            color: const Color(0xFFFFFFFF),
            icon: Icon(
              Icons.more_horiz,
              size: 20.96,
              color: Color(0xFF000000),
            ),
            width: 41.91999816894531,
            height: 41.91999816894531,
          ),
          
          
        ],
      ),
    ),
  ],
);
