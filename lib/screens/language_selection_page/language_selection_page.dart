import 'package:flutter/material.dart';
import 'package:halal_farm/core/constant/color_constant.dart';
import 'package:halal_farm/core/constant/constant.dart';
import 'package:halal_farm/core/constant/size_config.dart';
import 'package:halal_farm/core/data/data.dart';
import 'package:halal_farm/core/extensions/extension.dart';
import 'package:halal_farm/core/widgets/my_buttons.dart';
import 'package:halal_farm/core/widgets/text_styles.dart';

class LanguageSelectionPage extends StatelessWidget {
  const LanguageSelectionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            Constant.halalFarmBlackLogo,
            height: getH(30),
          ).op(t: 88, b: 67),
          Text(
            "Tilni tanlang",
            style: TextStyles.BoldText600(),
          ),
          Text(
            "Dasturni qaysi tilda ishlatishni xohlaysiz?",
            style: TextStyles.normalText400(),
          ).op(b: 48),
          Container(
            height: getH(240),
            width: double.infinity,
            decoration: BoxDecoration(
              color: ColorConst.frame,
              borderRadius: BorderRadius.circular(16),
            ),
            child: ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.all(0),
              itemBuilder: (_, __) {
                return SizedBox(
                  height: getH(70),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: getH(25),
                        backgroundImage: AssetImage(MyData.langes[__]['img']),
                      ).op(l: 16, r: 20),
                      Text(
                        MyData.langes[__]["lang"],
                        style: TextStyles.BoldText500(),
                      ),
                    ],
                  ),
                ).onT(
                  ontap: () {
                    print("Ont $__");
                  },
                );
              },
              itemCount: MyData.langes.length,
              separatorBuilder: (BuildContext context, int index) =>
                  const Divider(),
            ),
          ),
          const Spacer(),
          GrenButton(text: "Keyingisi").onT(ontap: () {
            Navigator.pushNamed(context, "/home_page");
          }).op(b: 16),
        ],
      ).sp(h: 16),
    );
  }
}
