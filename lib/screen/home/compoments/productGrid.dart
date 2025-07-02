import 'package:flutter/material.dart';
import 'package:project_test/screen/compoments/btnAll.dart';
import 'package:project_test/const/text.dart';
import 'package:project_test/models/products.dart';
import 'package:project_test/screen/home/details/ProductDetailsScreen.dart';

class ProductGrid extends StatelessWidget {
  const ProductGrid({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // color: Colors.black,
      height: 462.82,
      child: GridView.builder(
        physics: BouncingScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 0.8,
        ),
        itemCount: products.length,
        itemBuilder: (_, index) {
          final isFirst = index == 0;
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetailsScreen(product: products[index]),
                ),
              );
            },
            child: Container(
              width: 180.25599670410156,
              height: 225.7760009765625,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.96),
                          color: Color(0xFFDFE1E6),
                        ),
                        child: Image.asset(
                          products[index].image,
                          width: 180.25599670410156,
                          height: 157.1999969482422,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        // right: 1,
                        left: 150.91, // ajustement du badge
                        top: 10.48,
                        child: SizedBox(
                          width: 18.86,
                          height: 18.86,
                          // decoration: BoxDecoration(color: Color(0xFFDF1C41)),
                          child:
                              isFirst
                                  ? Image.asset(
                                    'assets/icons/heartC.png',
                                    width: 18.86,
                                    height: 18.86,
                                    fit: BoxFit.cover,
                                  )
                                  : Image.asset(
                                    'assets/icons/heart.png',
                                    width: 18.86,
                                    height: 18.86,
                                    fit: BoxFit.cover,
                                  ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8.38),
                  SizedBox(
                    height: 60.19200134277344,
                    width: 180.25599670410156,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 130.25599670410156,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                products[index].title,
                                style: Ptext.button,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                              ),
                              const SizedBox(height: 5),
                              Text(
                                "${products[index].price}",
                                style: Ptext.button,
                              ),
                            ],
                          ),
                        ),
                        AllBtn(
                          icon: Icon(Icons.arrow_outward_sharp, size: 20.96),
                          color: Color(0xff77EF67),
                          width: 41.92,
                          height: 41.92,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
