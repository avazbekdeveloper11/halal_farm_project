import 'package:halal_farm/screens/singel_page/components/app_bar_animal.dart';
import 'package:halal_farm/core/widgets/warning_dieaise/warning_dieaise.dart';
import 'package:halal_farm/screens/singel_page/components/history_tile.dart';
import 'package:halal_farm/screens/singel_page/components/tags_animal.dart';
import 'package:halal_farm/core/widgets/percent/persent_type_power.dart';
import 'package:halal_farm/core/widgets/percent/trafic_widget.dart';
import 'package:halal_farm/core/widgets/decoration_widget.dart';
import 'package:halal_farm/core/constant/color_constant.dart';
import 'package:halal_farm/core/constant/size_config.dart';
import 'package:halal_farm/core/extensions/extension.dart';
import 'package:halal_farm/core/widgets/text_styles.dart';
import 'package:halal_farm/core/constant/constant.dart';
import 'package:flutter/material.dart';

class SingelPage extends StatelessWidget {
  const SingelPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const AppBarAnimal().op(b: 18),
            warningDisease(
              text: "Otlar orasida oq mushak kasalligi tarqayapti. ",
            ),
            const TagsAnimal().sp(h: 16),
            SizedBox(
              width: double.infinity,
              child: Text(
                "Yetilish ko’rsatkichi",
                style: TextStyles.BoldText600(
                  sz: getW(17),
                ),
              ).op(l: 16, t: 32, b: 20),
            ),
            Text(
              "52%",
              style: TextStyles.BoldText500(
                col: ColorConst.dark,
                sz: getW(20),
              ),
            ).op(b: 8),
            percentTypePower(
              percent: (30 * 2),
              height: 200,
              widht: 110,
              radius: 24,
            ),
            Text(
              "Taxminiy yetilish sanasi: 22-noyabr, 2022-yil",
              style: TextStyles.BoldText500(
                col: ColorConst.grey,
                sz: getW(14),
              ),
            ).op(t: 16, b: 32),
            SizedBox(
              width: double.infinity,
              child: Text(
                "Yemishlari (2)",
                style: TextStyles.BoldText500(
                  sz: getW(20),
                ),
              ).op(l: 16, b: 18),
            ),
            TrafficFoizi(
              image: Constant.beda,
              title: "Beda (52%)",
              percent: (100 - 52 /*bu*/),
            ),
            TrafficFoizi(
              image: Constant.bugdoy,
              title: "Bug'doy (30%)",
              percent: (100 - 30 /*bu*/),
            ),
            historyTile(
              food: "Yemishlar tarixi",
              howMuch: 12,
            ),
            const Divider(height: 5, thickness: 1).sp(h: 16),
            historyTile(
              food: "Dorilar tarixi",
              howMuch: 3,
            ),
            const Divider(height: 5, thickness: 1).sp(h: 16),
            Container(
              height: getH(56),
              decoration: MyDeco.radius(12, color: ColorConst.frame),
              child: Center(
                child: Text(
                  "Uyimga yetkazib berish",
                  style: TextStyles.BoldText600(
                    sz: getW(17),
                  ),
                ),
              ),
            ).onT(ontap: () {
              Navigator.pushNamed(context, "/uyimga_yetkazib_berish");
            }).op(l: 16, r: 16, t: 32, b: 4),
            Text(
              "Hayvoningizni tirik yoki so’yilgan holatda uyingizga eltib beramiz",
              style: TextStyles.normalText400(
                sz: 13,
                col: ColorConst.grey,
              ),
            ).sp(h: 16),
            Container(
              height: getH(56),
              decoration: MyDeco.radius(12, color: ColorConst.frame),
              child: Center(
                child: Text(
                  "Sotuvga qo’yish",
                  style: TextStyles.BoldText600(
                    sz: getW(17),
                  ),
                ).onT(
                  ontap: () {
                    Navigator.pushNamed(context, '/sale_page');
                  },
                ),
              ),
            ).op(l: 16, r: 16, t: 16, b: 4),
            Text(
              "Hayvoningizni onlayn bozorda boshqalarga sotishingiz mumkin",
              style: TextStyles.normalText400(
                col: ColorConst.grey,
                sz: 13,
              ),
            ).op(r: 16, l: 16, b: 24),
          ],
        ),
      ),
    );
  }
}
