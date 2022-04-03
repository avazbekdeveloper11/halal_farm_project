import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:halal_farm/core/constant/color_constant.dart';
import 'package:halal_farm/core/constant/constant.dart';
import 'package:halal_farm/core/constant/size_config.dart';
import 'package:halal_farm/core/extensions/extension.dart';
import 'package:halal_farm/core/widgets/decoration_widget.dart';
import 'package:halal_farm/core/widgets/text_styles.dart';
import 'package:halal_farm/screens/home_page/components/circile_avatar.dart';

class Farms extends StatelessWidget {
  const Farms({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (_, __) {
          return Container(
            color: ColorConst.frame,
            child: Container(
              height: getH(334),
              decoration: MyDeco.radiusAndImage(12, image: Constant.farm),
              child: Stack(
                children: [
                  Positioned(
                    top: getH(20),
                    left: getW(20),
                    child: const AvatarContainer(),
                  ),
                  Positioned(
                    top: getH(20),
                    left: getW(44),
                    child: const AvatarContainer(),
                  ),
                  Positioned(
                    top: getH(20),
                    left: getW(72),
                    child: const AvatarContainer(),
                  ),
                  Positioned(
                    top: getH(20),
                    left: getW(96),
                    child: CircleAvatar(
                      radius: getH(20),
                      backgroundColor: ColorConst.white,
                      child: Center(
                        child: Text(
                          "44+",
                          style: TextStyles.BoldText500(),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: getH(266),
                    left: getW(20),
                    child: Text(
                      "Yangi O’zbekiston Fermasi",
                      style:
                          TextStyles.BoldText600(sz: 20, col: ColorConst.white),
                    ),
                  ),
                  Positioned(
                    top: getH(300),
                    left: getW(22),
                    child: Row(
                      children: [
                        SvgPicture.asset(Constant.location),
                        SizedBox(
                          width: getW(281),
                          child: Text(
                            "Sirdaryo" " vil." ", " " Guliston tumani",
                            style: TextStyles.normalText400(),
                          ),
                        ).op(l: 5)
                      ],
                    ),
                  ),
                ],
              ),
            ).op(b: 24, r: 8, l: 8),
          );
        },
        childCount: 4,
      ),
    );
  }
}
