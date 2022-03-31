import 'package:flutter/material.dart';
import 'package:halal_farm/core/constant/color_constant.dart';
import 'package:halal_farm/core/constant/constant.dart';
import 'package:halal_farm/core/constant/size_config.dart';
import 'package:halal_farm/core/data/data.dart';
import 'package:halal_farm/core/extensions/extension.dart';
import 'package:halal_farm/core/widgets/my_cards_widget.dart';
import 'package:halal_farm/core/widgets/text_styles.dart';

class TarifPage extends StatelessWidget {
  const TarifPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.background,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (_, __) {
                  return __ == 0
                      ? SizedBox(
                          height: getH(190),
                          child: Column(
                            children: [
                              Image.asset(
                                Constant.halalFarmBlackLogo,
                                height: getH(29),
                                width: getW(100),
                              ).op(t: 34, b: 40),
                              Text(
                                "A’zolik tariflari",
                                style: TextStyles.BoldText600(),
                              ).sp(h: 102),
                              Text(
                                "Qaysi tarif sizga ma’qulroq?",
                                style: TextStyles.normalText400(),
                              ).sp(h: 87).op(b: 40),
                            ],
                          ),
                        )
                      : MyCards.tarifCard(
                          context,
                          tarifData: MyData.tarifData[__ - 1],
                        ).all(a: 8);
                },
                childCount: MyData.tarifData.length + 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
