import 'package:flutter/material.dart';
import 'package:project_test/const/size.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_test/compoment/btnAll.dart';
import 'package:project_test/compoment/homeAppBar.dart';
import 'package:project_test/const/text.dart';
import 'package:project_test/screen/bottomAppBar.dart';
import 'package:project_test/screen/compoments/bannierHome.dart';
import 'package:project_test/screen/compoments/productGrid.dart';
import 'package:project_test/screen/compoments/searchBar.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});
  @override
  Widget build(BuildContext context) {
    List<String> categories = ['All', 'T-Shirt', 'Jacket', 'Shoes', 'Jeans'];
    return Scaffold(
      appBar: HomeAppBar(context),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: PSize.screenWidth(context),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(child: SearchBox()),
                    AllBtn(
                      width: 50.30,
                      height: 50.30,
                      color: const Color(0xFF77EF67),
                      icon: SvgPicture.asset(
                        'assets/icons/settings-04.svg',
                        width: 25.152,
                        height: 25.152,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                BannierHome(),

                SizedBox(height: PSize.screenHeight(context) * (20.48 / 896)),
                SizedBox(
                  height: 41.92,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, index) {
                      final isFirst = index == 0;
                      return Container(
                        height: 41.92,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16.77,
                          vertical: 10.48,
                        ),
                        margin: const EdgeInsets.only(right: 4.19),
                        decoration: ShapeDecoration(
                          color:
                              isFirst ? Colors.black : const Color(0xFFECEFF3),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(104.80),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            categories[index],
                            style: Ptext.button.copyWith(
                              color: isFirst ? Colors.white : Colors.black,
                            ),
                          ),
                        ),
                      );
                    },
                    itemCount: 5,
                    physics: BouncingScrollPhysics(),
                  ),
                ),
                SizedBox(height: PSize.screenHeight(context) * (20.48 / 896)),

                ProductGrid(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomHomeAppBar(),
    );
  }
}
