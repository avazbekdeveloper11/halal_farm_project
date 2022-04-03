
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:halal_farm/core/constant/color_constant.dart';
import 'package:halal_farm/core/constant/constant.dart';
import 'package:halal_farm/core/constant/size_config.dart';
import 'package:halal_farm/core/extensions/extension.dart';
import 'package:halal_farm/core/widgets/decoration_widget.dart';

class TagsAnimal extends StatelessWidget {
  const TagsAnimal({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.start,
        runSpacing: 16,
        spacing: getW(16),
        children: [
          Container(
            height: getH(47),
            width: getW(101),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(Constant.birthday).op(r: 5),
                const Text("8 oylik")
              ],
            ),
            decoration: MyDeco.radius(30, color: ColorConst.frame),
          ),
          Container(
            width: getW(169),
            height: getH(47),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(Constant.cash).op(r: 5),
                const Text("3 250 000 so’m")
              ],
            ),
            decoration: MyDeco.radius(30, color: ColorConst.frame),
          ),
          Container(
            width: getW(211),
            height: getH(47),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(Constant.currentadress).op(r: 5),
                const Text("New Uzbekistan Farm")
              ],
            ),
            decoration: MyDeco.radius(30, color: ColorConst.frame),
          ),
          Container(
            width: getW(225),
            height: getH(47),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(Constant.calendar).op(r: 5),
                const Text("Xarid sanasi: 28.11.2021")
              ],
            ),
            decoration: MyDeco.radius(30, color: ColorConst.frame),
          ),
        ],
      ),
    );
  }
}
