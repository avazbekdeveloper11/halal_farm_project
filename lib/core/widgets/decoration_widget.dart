import 'package:flutter/material.dart';
import 'package:halal_farm/core/constant/color_constant.dart';

class MyDeco {
  static BoxDecoration radiusAndImage(double r, {required String image}) {
    return BoxDecoration(
      color: ColorConst.blue,
      image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
      borderRadius: BorderRadius.circular(r),
    );
  }

  static BoxDecoration radius(double r, {required Color color}) {
    return BoxDecoration(
      color: color,
      borderRadius: BorderRadius.all(Radius.circular(r)),
    );
  }

  static BoxDecoration radiusAndColor(double r, {required Color color}) {
    return BoxDecoration(
      border: Border.all(color: color),
      borderRadius: BorderRadius.circular(r),
    );
  }

  static BoxDecoration tarifCardDeco() {
    return BoxDecoration(
      color: ColorConst.white,
      borderRadius: BorderRadius.circular(16),
    );
  }
}
