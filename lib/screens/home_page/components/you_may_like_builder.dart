import 'package:flutter/material.dart';
import 'package:halal_farm/core/constant/color_constant.dart';
import 'package:halal_farm/core/constant/constant.dart';
import 'package:halal_farm/core/constant/size_config.dart';
import 'package:halal_farm/core/extensions/extension.dart';
import 'package:halal_farm/core/widgets/decoration_widget.dart';
import 'package:halal_farm/core/widgets/text_styles.dart';

class YouMayLikeBuilder extends StatelessWidget {
  const YouMayLikeBuilder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((_, __) {
        return Container(
          color: ColorConst.frame,
          child: Container(
            height: getH(378),
            decoration: MyDeco.radius(12, color: ColorConst.white),
            child: Column(
              children: [
                Container(
                  height: getH(277),
                  width: double.infinity,
                  decoration:
                      MyDeco.radiusverImage(t: 12, image: Constant.horse),
                  child: Container(
                    decoration: MyDeco.radius(8,
                        color: ColorConst.greenBold.withOpacity(0.8)),
                    child: Center(
                      child: Text(
                        "Boqish uchun",
                        style: TextStyles.BoldText500(
                          col: ColorConst.white,
                          sz: 15,
                        ),
                      ),
                    ),
                  ).op(t: 228, r: 230, l: 16, b: 16),
                ),
                Container(
                  decoration: MyDeco.verticalR(b: 12),
                  height: getH(100),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Qorabayir toy " "   ·   " "3 oylik",
                            style: TextStyles.normalText400(
                              col: ColorConst.dark,
                            ),
                          ),
                        ],
                      ).op(t: 20, b: 15, l: 20),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "3 250 000",
                            style: TextStyles.BoldText600(
                              sz: 26,
                            ),
                          ),
                          Text(
                            "  so'm",
                            style: TextStyles.BoldText600(
                              col: ColorConst.dark,
                              sz: 18,
                            ),
                          ).op(b: 2),
                        ],
                      ).op(l: 20, b: 20),
                    ],
                  ),
                ),
              ],
            ),
          ).op(b: 24, r: 8, l: 8),
        );
      }, childCount: 4),
    );
  }
}
