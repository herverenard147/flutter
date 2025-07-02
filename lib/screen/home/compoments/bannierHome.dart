import 'package:flutter/material.dart';
import 'package:project_test/screen/compoments/btnAll.dart';
import 'package:project_test/const/size.dart';
import 'package:project_test/const/text.dart';

class BannierHome extends StatelessWidget {
  const BannierHome({super.key});

  @override
  Widget build(BuildContext context) {
    return
    // Container(
    //   margin: EdgeInsets.symmetric(
    //     horizontal: PSize.screenWidth(context) * 0.03,
    //   ),
    //   padding: EdgeInsets.all(17.96 * PSize.screenHeight(context) / 896),
    //   width: double.infinity,
    //   height: 165.584,
    //   decoration: BoxDecoration(
    //     borderRadius: BorderRadius.circular(20),
    //     color: Colors.black,
    //   ),
    //   child: Row(
    //     mainAxisAlignment: MainAxisAlignment.start,
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     children: [
    //       Column(
    //         children: [
    //           Text(
    //             'Get your special \n sale up to 50%',
    //             style: Ptext.subtitle.copyWith(color: Colors.white),
    //           ),
    //           SizedBox(height: 12.58),
    //           Row(
    //             mainAxisAlignment: MainAxisAlignment.start,
    //             crossAxisAlignment: CrossAxisAlignment.start,
    //             spacing: 8.38,
    //             children: [
    //               GestureDetector(
    //                 onTap: () {},
    //                 child: Container(
    //                   // width: 103.38,
    //                   height: 41.92,
    //                   padding: const EdgeInsets.symmetric(
    //                     horizontal: 16.768,
    //                     vertical: 8.384,
    //                   ),
    //                   decoration: ShapeDecoration(
    //                     color: const Color(0xFF77EF67),
    //                     shape: RoundedRectangleBorder(
    //                       side: BorderSide(
    //                         width: 1.05,
    //                         color: Color(0xFFC1C7CF),
    //                       ),
    //                       borderRadius: BorderRadius.circular(1048),
    //                     ),
    //                   ),
    //                   child: Center(
    //                     child: Text(
    //                       'Shop Now',
    //                       textAlign: TextAlign.center,
    //                       style: TextStyle(
    //                         color: Colors.black,
    //                         fontSize: 14.67,
    //                         fontFamily: 'Manrope',
    //                         fontWeight: FontWeight.w600,
    //                         height: 1.55,
    //                       ),
    //                     ),
    //                   ),
    //                 ),
    //               ),
    //               AllBtn(
    //                 icon: Icon(Icons.arrow_outward_sharp, size: 20.96),
    //                 color: Color(0xff77EF67),
    //                 width: 41.92,
    //                 height: 41.92,
    //               ),
    //             ],
    //           ),
    //         ],
    //       ),
    //       Positioned(
    //         left: 186.54,
    //         top: 0,
    //         child: Container(
    //           width: 175.02,
    //           height: 165.58,
    //           decoration: BoxDecoration(
    //             image: DecorationImage(
    //               image:
    //                   Image.asset(
    //                     'assets/products/image-removebg-preview (1).png',
    //                   ).image,
    //               fit: BoxFit.fill,
    //             ),
    //           ),
    //         ),
    //       ),
    //     ],
    //   ),
    // );
    Stack(
      children: [
        Container(
          // margin: EdgeInsets.symmetric(
          //   horizontal: PSize.screenWidth(context) * 0.03,
          // ),
          padding: EdgeInsets.all(20.96 * PSize.screenHeight(context) / 896),
          width: double.infinity,
          height: 165.584,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.black,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 122.49600219726562,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Get your special \n sale up to 50%',
                      style: Ptext.subtitle.copyWith(color: Colors.white),
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 41.92,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16.768,
                              vertical: 8.384,
                            ),
                            decoration: ShapeDecoration(
                              color: const Color(0xFF77EF67),
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  width: 1.05,
                                  color: Color(0xFFC1C7CF),
                                ),
                                borderRadius: BorderRadius.circular(1048),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'Shop Now',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14.67,
                                  fontFamily: 'Manrope',
                                  fontWeight: FontWeight.w600,
                                  height: 1.55,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 8.38), // remplace `spacing`
                        AllBtn(
                          icon: Icon(Icons.arrow_outward_sharp, size: 20.96),
                          color: Color(0xff77EF67),
                          width: 41.92,
                          height: 41.92,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
          left: 220.54,
          top: 0,
          child: Container(
            width: 175.02,
            height: 165.58,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/products/image-removebg-preview (1).png',
                ),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
