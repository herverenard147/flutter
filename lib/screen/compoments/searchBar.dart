import 'package:flutter/material.dart';
import 'package:project_test/const/size.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: PSize.screenWidth(context) * (240 / 414),
      height: PSize.screenHeight(context) * (52.4 / 896),
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      margin: const EdgeInsets.only(right: 12.567),
      decoration: BoxDecoration(
        // color: Color.fromARGB(255, 0, 0, 0),
        border: Border.all(color: Color(0xFFDFE1E6)),
        borderRadius: BorderRadius.circular(16),
      ),
      child: TextField(
        onChanged: (value) {},
        decoration: InputDecoration(
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          hintText: "Explore Fashion",
          prefixIcon: const Icon(Icons.search),
          prefixIconColor: Colors.black.withOpacity(1),
        ),
      ),
    );
  }
}
