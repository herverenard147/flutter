import 'package:flutter/material.dart';

class AllBtn extends StatelessWidget {
  final Widget icon;
  final double width;
  final double height;
  final Color color;

  const AllBtn({
    super.key,
    required this.icon,
    required this.color,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: width,
        height: height,
        // padding: const EdgeInsets.symmetric(horizontal: 16.77, vertical: 8.38),
        decoration: ShapeDecoration(
          color: color,
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 1.05, color: Color(0xFFC1C7CF)),
            borderRadius: BorderRadius.circular(1048),
          ),
        ),
        child: Center(child: icon),
      ),
    );
  }
}
