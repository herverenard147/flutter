import 'package:flutter/widgets.dart';
import 'package:project_test/const/color.dart';

class Ptext{
  const Ptext._();
  static TextStyle title = TextStyle(
      color: PColor.subtitle,
      fontSize: 25.152,
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.normal,    
  );
  static TextStyle subtitle = TextStyle(
      color: PColor.subtitle,
      fontSize: 25.152,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal,    
  );
  static TextStyle littletitle = TextStyle(
      color: PColor.primary,
      fontSize: 14.672,
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.normal,    
  );
  static TextStyle button = TextStyle(
    color: PColor.textbody,
    fontSize: 16.768,
    fontWeight: FontWeight.w400,
    letterSpacing: 1.2,
    fontStyle: FontStyle.normal,  
  );
  static TextStyle heightext = TextStyle(
    color: PColor.textbody,
    fontSize: 37.728,
    fontWeight: FontWeight.w500,
    letterSpacing: 1.2,
    fontStyle: FontStyle.normal,  
  );
}