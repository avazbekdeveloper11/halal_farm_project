import 'package:flutter/material.dart';
import 'package:halal_farm/core/constant/color_constant.dart';
import 'package:halal_farm/core/constant/size_config.dart';

class Constant {
  // SVG
  static String googleSvg = 'assets/images/google.svg';
  static String facebookSvg = 'assets/images/facebook.svg';
  static String appleSvg = 'assets/images/apple.svg';
  static String xSvg = 'assets/svg/x.svg';
  static String oSvg = 'assets/svg/o.svg';
  static String doneSvg = 'assets/svg/done.svg';
  // PNG
  static String sheep = 'assets/images/sheep.png';
  static String cow = 'assets/images/cow.png';
  static String halalFarmWhiteLogo = 'assets/images/halal_farm_logo.png';
  static String halalFarmBlackLogo = 'assets/images/halal_farm_black_logo.png';
  static String buzoqcha = 'assets/images/buzoqcha.png';
  //
  static Row IjtimoiyTarmoqlarda() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(width: getW(95), child: const Divider()),
        Text(
          "Ijtimoiy tarmoqlar orqali",
          style: TextStyle(color: ColorConst.grey),
        ),
        SizedBox(width: getW(95), child: const Divider()),
      ],
    );
  }
}
