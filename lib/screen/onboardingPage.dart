import 'package:flutter/material.dart';
import 'package:project_test/const/color.dart';
import 'package:project_test/const/size.dart';
import 'package:project_test/const/text.dart';
import 'package:project_test/screen/homePage.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:project_test/compoment/OnboardingBar.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});
  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OnboardingBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/illustration.png',
              height: PSize.screenHeight(context) * (396.145 / 896),
              width: PSize.screenWidth(context) * (297.632 / 414),
            ),
            SizedBox(height: PSize.screenHeight(context) * (25.93 / 896)),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      'New Fashion Collection',
                      textAlign: TextAlign.start,
                    ),
                  ),

                  RichText(
                    text: TextSpan(
                      // text: 'ShopNest',
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Shop Smarter, Faster with',
                          style: Ptext.heightext,
                        ),
                        TextSpan(
                          text: 'ShopNest',
                          style: Ptext.heightext.copyWith(
                            color: const Color(0xFF7FF431),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: DotsIndicator(
                      dotsCount: 3,
                      position: 0,
                      decorator: DotsDecorator(
                        activeColor: PColor.secondary,
                        color: Color(0xffC1C7D0),
                        size: const Size.square(9.0),
                        activeSize: const Size(18.0, 9.0),
                        activeShape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: PSize.screenHeight(context) * (25.93 / 896)),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Homepage()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF7FF431),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.symmetric(
                  vertical: PSize.screenHeight(context) * (8.384 / 414),
                  horizontal: PSize.screenWidth(context) * (372.04 / 896),
                ),
              ),
              child: Text(
                'Next',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black /* Additional-black */,
                  fontSize: 16.77,
                  fontFamily: 'Manrope',
                  fontWeight: FontWeight.w600,
                  height: 1.55,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
