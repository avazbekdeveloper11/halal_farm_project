import 'package:flutter/material.dart';
import 'package:halal_farm/core/constant/color_constant.dart';
import 'package:halal_farm/core/constant/size_config.dart';

class TextStyles {
  static TextStyle BoldText700({double sz = 26, Color col = Colors.black}) {
    return TextStyle(
        color: col, fontSize: getW(sz), fontWeight: FontWeight.w700);
  }

  static TextStyle BoldText600({double sz = 26, Color col = Colors.black}) {
    return TextStyle(
        color: col, fontSize: getW(sz), fontWeight: FontWeight.w600);
  }

  static TextStyle BoldText500({double sz = 18, Color col = Colors.black}) {
    return TextStyle(
        color: col, fontSize: getW(sz), fontWeight: FontWeight.w500);
  }

  static TextStyle normalText400({double sz = 16, Color col = Colors.grey}) {
    return TextStyle(
        color: col, fontSize: getW(sz), fontWeight: FontWeight.w400);
  }

  static TextStyle greenButtonTextStyle({double sz = 17, Color? col}) {
    return TextStyle(
      color: col ?? ColorConst.white,
      fontSize: getW(sz),
      fontWeight: FontWeight.w600,
    );
  }
}
