import 'package:flutter/material.dart';
import 'package:halal_farm/core/constant/size_config.dart';

extension WidgetExtension on Widget {
  //  PADDING SYMETRIC
  Widget sp({double h = 0.0, double v = 0.0}) => Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getW(h),
          vertical: getH(v),
        ),
        child: this,
      );

  //  PADDING ALL
  Widget all({double a = 0.0}) => Padding(
        padding: EdgeInsets.all(getH(a)),
        child: this,
      );

  //  PADDING ONLY
  Widget op({
    double r = 0.0,
    double l = 0.0,
    double t = 0.0,
    double b = 0.0,
  }) =>
      Padding(
        padding: EdgeInsets.only(
          right: getW(r),
          left: getW(l),
          top: getH(t),
          bottom: getH(b),
        ),
        child: this,
      );

  InkWell onT({ontap}) => InkWell(
        // highlightColor: Colors.transparent,
        // splashColor: Colors.transparent,
        radius: 25,
        onTap: ontap,
        child: this,
      );
}
