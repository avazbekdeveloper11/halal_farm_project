import 'package:flutter/material.dart';
import 'package:halal_farm/core/constant/color_constant.dart';
import 'package:halal_farm/core/constant/size_config.dart';
import 'package:halal_farm/core/extensions/extension.dart';
import 'package:halal_farm/core/widgets/decoration_widget.dart';
import 'package:halal_farm/core/widgets/text_styles.dart';

class YouMayLike extends StatelessWidget {
  const YouMayLike({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        color: ColorConst.frame,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: getH(56),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.add),
                    Text(
                      "Yangi hayvon sotib olish",
                      style: TextStyles.BoldText600(sz: 17),
                    ),
                  ],
                ),
              ),
              decoration: MyDeco.radiusAndColor(12, color: ColorConst.dark),
            ).onT(ontap: () {}).sp(h: 8),
            Text(
              "Sizga yoqishi mumkin",
              style: TextStyles.BoldText700(sz: 24),
            ).op(l: 16, t: 64, b: 24),
          ],
        ),
      ),
    );
  }
}
