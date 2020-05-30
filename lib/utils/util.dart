import 'package:flutter/material.dart';

class UIColors {
  static const bgcolor = Color(0xffF8F5FF);
  static const color2 = Color(0xff0375FF);
  static const color3 = Color(0xff0752CB);
  static const color4 = Color(0xff38AE00);
  static const color5 = Color(0xffFFFFFF);
}

double screenHeight(BuildContext context, double percent) =>
    MediaQuery.of(context).size.height * percent;

double screenWidth(BuildContext context, double percent) =>
    MediaQuery.of(context).size.height * percent;
