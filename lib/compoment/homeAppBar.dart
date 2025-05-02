import 'package:flutter/material.dart';
import 'package:project_test/const/color.dart';
import 'package:project_test/compoment/btnAll.dart';

AppBar HomeAppBar(BuildContext context) => AppBar(
  centerTitle: true,
  automaticallyImplyLeading: false,
  title: Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Image.asset('assets/icons/iconsO.png', height: 30, width: 30),
      const SizedBox(width: 10),
      Text('Shopnest'),
    ],
  ),
  actions: [
    Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Row(
        children: [
          AllBtn(
            color: const Color(0xFFFFFFFF),
            icon: Icon(
              Icons.shopping_cart_outlined,
              size: 20.96,
              color: Color(0xFF000000),
            ),
            width: 50.30,
            height: 50.30,
          ),
          SizedBox(width: 12.58), // spacing
          Stack(
            children: [
              Container(
                width: 52.40,
                height: 52.40,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1.05, color: Color(0xFFDFE1E6)),
                    borderRadius: BorderRadius.circular(104.80),
                  ),
                ),
                child: Center(
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.notifications_outlined,
                      size: 29,
                      color: PColor.textbody,
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 18, // ajustement du badge
                top: 17,
                child: Container(
                  width: 8.38,
                  height: 8.38,
                  decoration: ShapeDecoration(
                    color: Color(0xFFDF1C41),
                    shape: OvalBorder(
                      side: BorderSide(width: 1.05, color: Color(0xFFECEFF3)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  ],
);
