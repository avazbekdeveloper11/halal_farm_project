import 'package:flutter/material.dart';
import 'package:halal_farm/core/constant/color_constant.dart';
import 'package:halal_farm/core/constant/constant.dart';
import 'package:halal_farm/core/constant/size_config.dart';
import 'package:halal_farm/core/data/data.dart';
import 'package:halal_farm/core/extensions/extension.dart';
import 'package:halal_farm/core/widgets/my_cards_widget.dart';
import 'package:halal_farm/core/widgets/text_styles.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.blue,
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (_, __) {
                return __ == 0
                    ? home_appbar()
                    : MyCards.tarifCard(
                        context,
                        tarifData: MyData.tarifData[__ - 1],
                      );
              },
              childCount: MyData.tarifData.length + 1,
            ),
          ),
        ],
      ),
    );
  }

  Container home_appbar() {
    return Container(
      color: ColorConst.greenBold,
      height: getH(190),
      child: Column(
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
          Text(
            "450 000" + " so’m",
            style: TextStyles.BoldText600(
              col: ColorConst.white,
            ),
          ).op(b: 8),
          Text(
            "Hisobni to’ldirish uchun ID: 255 584 789",
            style: TextStyles.normalText400(
              col: ColorConst.white,
            ),
          ),
        ],
      ),
    );
  }
}
