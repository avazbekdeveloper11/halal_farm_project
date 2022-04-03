
import 'package:flutter/material.dart';
import 'package:halal_farm/core/constant/color_constant.dart';
import 'package:halal_farm/core/constant/constant.dart';
import 'package:halal_farm/core/constant/size_config.dart';

class AvatarContainer extends StatelessWidget {
  const AvatarContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getH(40),
      height: getH(40),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Constant.horse),
          fit: BoxFit.cover,
        ),
        color: ColorConst.white,
        shape: BoxShape.circle,
        border: Border.all(
          color: ColorConst.white,
          width: 2,
        ),
      ),
    );
  }
}
