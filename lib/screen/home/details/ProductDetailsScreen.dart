import 'package:flutter/material.dart';
import 'package:project_test/const/size.dart';
import 'package:project_test/models/products.dart';
import 'package:project_test/screen/compoments/otherAppBar.dart';

class ProductDetailsScreen extends StatelessWidget {
  final Product product;
  const ProductDetailsScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OtherAppBar(context),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 16.77, right: 8.52),
          child: SizedBox(
            width: PSize.screenWidth(context),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    width: 376.36602783203125,
                    height: 209.60000610351562,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(43.26),
                      color: const Color(0xFFD9D9D9),
                    ),
                    child: Image.asset(
                      product.image,
                      width: 180.25599670410156,
                      height: 157.1999969482422,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
