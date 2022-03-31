import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:halal_farm/core/constant/color_constant.dart';
import 'package:halal_farm/core/constant/constant.dart';
import 'package:halal_farm/core/constant/size_config.dart';
import 'package:halal_farm/core/extensions/extension.dart';
import 'package:halal_farm/core/widgets/text_styles.dart';

class GrenButton extends StatelessWidget {
  String text;
  double radius;
  GrenButton({Key? key, required this.text, this.radius = 12})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getH(56),
      width: double.infinity,
      child: Center(
        child: Text(
          text,
          style: TextStyles.greenButtonTextStyle(),
        ),
      ),
      decoration: BoxDecoration(
        color: ColorConst.greenBold,
        borderRadius: BorderRadius.circular(radius),
      ),
    );
  }
}

class whiteButton extends StatelessWidget {
  String text;
  whiteButton({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getH(56),
      width: double.infinity,
      child: Center(
        child: Text(
          text,
          style: TextStyles.greenButtonTextStyle(col: ColorConst.black),
        ),
      ),
      decoration: BoxDecoration(
        color: ColorConst.white,
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}

class MyButtonClass {
  static Container withGoogleButton(
    String text,
    String image, {
    double witht = double.infinity,
  }) {
    return Container(
      height: getH(56),
      width: getW(witht),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(image),
          Text(text, style: TextStyles.BoldText500()).op(l: 15),
        ],
      ),
      decoration: BoxDecoration(
        color: ColorConst.frame,
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}

class MyOutlineButton extends StatelessWidget {
  String text;
  double radius;
  MyOutlineButton({Key? key, required this.text, this.radius = 12})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getH(56),
      width: double.infinity,
      child: Center(
        child: Text(
          text,
          style: TextStyles.BoldText500(),
        ),
      ),
      decoration: BoxDecoration(
        border: Border.all(color: ColorConst.dark),
        borderRadius: BorderRadius.circular(radius),
      ),
    );
  }
}
