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
  static String plusSvg = 'assets/svg/plus_circle.svg';
  static String plusRedSvg = 'assets/svg/plus_circile_red.svg';
  static String location = 'assets/svg/location.svg';
  static String warning = 'assets/svg/warning.svg';
  static String live_video = 'assets/svg/live_video.svg';
  static String currentadress = 'assets/svg/current-location.svg';
  static String cash = 'assets/svg/cash.svg';
  static String birthday = 'assets/svg/birthday.svg';
  static String calendar = 'assets/svg/calendar.svg';
  static String home = 'assets/svg/home.svg';
  static String filter = 'assets/svg/filter.svg';
  // PNG
  static String sheep = 'assets/images/sheep.png';
  static String cow = 'assets/images/cow.png';
  static String halalFarmWhiteLogo = 'assets/images/halal_farm_logo.png';
  static String halalFarmBlackLogo = 'assets/images/halal_farm_black_logo.png';
  static String buzoqcha = 'assets/images/buzoqcha.png';
  static String horse = 'assets/images/horse.png';
  static String sheepBig = 'assets/images/sheepBIg.png';
  static String beda = 'assets/images/beda.png';
  static String bugdoy = 'assets/images/bugdoy.png';
  static String farm = 'assets/images/farm.png';
  static String dori = 'assets/images/dori_big.png';
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
