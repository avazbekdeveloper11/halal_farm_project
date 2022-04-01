
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:halal_farm/core/constant/color_constant.dart';
import 'package:halal_farm/core/constant/constant.dart';
import 'package:halal_farm/core/constant/size_config.dart';
import 'package:halal_farm/core/extensions/extension.dart';
import 'package:halal_farm/core/widgets/text_styles.dart';

class BalansAppBar extends StatelessWidget {
  const BalansAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: ColorConst.greenBold,
      automaticallyImplyLeading: false,
      expandedHeight: getH(206),
      centerTitle: true,
      flexibleSpace: FlexibleSpaceBar(
        background: Column(
          children: [
            Image.asset(
              Constant.halalFarmWhiteLogo,
              height: getH(29),
              width: getW(100),
            ).op(t: 34, b: 32),
            Text(
              "Balansingiz",
              style: TextStyles.normalText400(
                col: ColorConst.white,
                sz: 14,
              ),
            ).op(b: 4),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SvgPicture.asset(Constant.plusSvg).onT(
                  ontap: () {
                    print("pluss");
                  },
                ).op(r: 12),
                Text(
                  "450 000",
                  style: TextStyles.BoldText700(
                    col: ColorConst.white,
                  ),
                ),
                Text(
                  " so’m",
                  style: TextStyles.normalText400(
                    sz: 20,
                    col: ColorConst.white,
                  ),
                )
              ],
            ).op(b: 8),
            Text(
              "Hisobni to’ldirish uchun ID: 255 584 789",
              style: TextStyles.normalText400(
                col: ColorConst.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}