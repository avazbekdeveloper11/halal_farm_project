import 'package:flutter/material.dart';
import 'package:halal_farm/core/constant/color_constant.dart';
import 'package:halal_farm/core/constant/size_config.dart';
import 'package:halal_farm/core/extensions/extension.dart';
import 'package:halal_farm/core/widgets/decoration_widget.dart';

class percentTypePower extends StatelessWidget {
  double height;
  double widht;
  double radius;
  int percent;
  percentTypePower(
      {Key? key,
      this.height = 100,
      this.widht = 74,
      required this.percent,
      this.radius = 12})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getW(widht),
      height: getH(height),
      decoration: MyDeco.radiusAndColor(
        radius,
        color: ColorConst.grey,
      ),
      child: Container(
        decoration: MyDeco.radius(
          radius - 1,
          color: percent > 80 ? ColorConst.red : ColorConst.greenBold,
        ),
      ).op(t: percent.toDouble()),
    );
  }
}
