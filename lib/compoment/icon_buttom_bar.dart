import 'package:flutter/material.dart';
import 'package:project_test/const/color.dart';

class IconButtomBar extends StatelessWidget {
  const IconButtomBar({
    super.key,
    required this.size,
    required this.icon,
    required this.press,
    this.numItems = 0,
  });

  final Size size;
  final IconData icon;
  final int numItems;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return
    // InkWell(
    //   borderRadius: BorderRadius.circular(50),
    //   child: Stack(
    //     children: [
    //       if (numItems != 0)
    //         Positioned(
    //           top: -6,
    //           right: 10,
    //           // left: 40,
    //           // bottom: 0,
    //           child: Container(
    //             height: size.height * 0.03,
    //             width: size.width * 0.04,
    //             decoration: const BoxDecoration(
    //               color: Color(0xffFF4848),
    //               shape: BoxShape.circle,
    //               // border: Border.all(
    //               //   width: 1.5,
    //               //   color: TColor.beige,
    //               // ),
    //             ),
    //             child: Center(
    //               child: Text(
    //                 "$numItems",
    //                 style: const TextStyle(
    //                   fontSize: 10,
    //                   fontWeight: FontWeight.w600,
    //                 ),
    //               ),
    //             ),
    //           ),
    //         ),
    //       IconButton(
    //         onPressed: press,
    //         icon: Icon(
    //           icon,
    //           size: 29,
    //           color: PColor.textbody,
    //         ),
    //         // SvgPicture.asset("assets/icons/cart.svg"),
    //       ),
    //     ],
    //   ),
    // );
    Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Row(
        children: [
          Container(
            width: 50.30,
            height: 50.30,
            padding: const EdgeInsets.symmetric(
              horizontal: 16.77,
              vertical: 8.38,
            ),
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1.05, color: Color(0xFFC1C7CF)),
                borderRadius: BorderRadius.circular(1048),
              ),
              shadows: [
                BoxShadow(
                  color: Color(0x0F0D0D12),
                  blurRadius: 2,
                  offset: Offset(0, 1),
                ),
              ],
            ),
            child: Center(
              child: Container(
                width: 20.96,
                height: 20.96,
                decoration: BoxDecoration(),
                child: IconButton(
                  onPressed: press,
                  icon: Icon(icon,
                    size: 29,
                    color: PColor.textbody,
                  ),
                  // SvgPicture.asset("assets/icons/cart.svg"),
                ),
              ),
            ),
          ),
          SizedBox(width: 12.58), // spacing
          Stack(
            children: [
              Container(
                width: 52.40,
                height: 52.40,
                padding: const EdgeInsets.all(10.48),
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1.05, color: Color(0xFFDFE1E6)),
                    borderRadius: BorderRadius.circular(104.80),
                  ),
                ),
                child: Container(
                  width: 25.15,
                  height: 25.15,
                  decoration: BoxDecoration(),
                ),
              ),
              Positioned(
                right: 4, // ajustement du badge
                top: 10,
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
    );
  
  }
}
