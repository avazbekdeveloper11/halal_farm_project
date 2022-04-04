import 'package:flutter/material.dart';
import 'package:halal_farm/core/constant/color_constant.dart';
import 'package:halal_farm/core/constant/size_config.dart';
import 'package:halal_farm/core/extensions/extension.dart';
import 'package:halal_farm/core/widgets/text_styles.dart';

class AppBars {
  static Row appBarlogin(BuildContext context, String text) {
    return Row(
      children: [
        Icon(
          Icons.arrow_back_ios_new_rounded,
          size: getW(30),
          color: ColorConst.blue,
        ).onT(ontap: () {
          Navigator.pop(context);
        }),
        Text(
          'Ortga',
          style: TextStyles.BoldText600(sz: 17, col: ColorConst.blue),
        ).onT(ontap: () {
          Navigator.pop(context);
        }),
        Text(
          text,
          style: TextStyles.BoldText600(
            sz: 18,
          ),
        ).op(l: 40),
      ],
    );
  }
}
