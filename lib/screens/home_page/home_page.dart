import 'package:flutter/material.dart';
import 'package:halal_farm/core/constant/color_constant.dart';
import 'package:halal_farm/core/constant/constant.dart';
import 'package:halal_farm/core/extensions/extension.dart';
import 'package:halal_farm/core/widgets/animals_card/animals_card.dart';
import 'package:halal_farm/core/widgets/text_styles.dart';
import 'package:halal_farm/screens/home_page/components/balans_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.greenBold,
      body: CustomScrollView(
        slivers: [
          const BalansAppBar(),
          SliverToBoxAdapter(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: ColorConst.frame,
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(16),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Mening hayvonlarim (2)",
                    style: TextStyles.BoldText700(sz: 24),
                  ).sp(h: 24, v: 24),
                  AnimalsCard(
                    title: "1. Denov oti (№254)",
                    animalImage: Constant.horse,
                    ripeningTime: "22-noyabr, 2022-yil",
                    firstPercent: 52,
                    food: 'Yetilish ko’rsatkichi',
                    foodTitle: "Yemishlari (2)",
                    percentMeture: 50,
                    imageFirst: Constant.beda,
                    imageSecond: Constant.bugdoy,
                    firstFood: "Beda",
                    secondFood: 'Bug’doy',
                    secondPersent: 8,
                  ).op(b: 8, r: 8, l: 8),
                  AnimalsCard(
                    title: "1. Denov oti (№254)",
                    animalImage: Constant.sheepBig,
                    disease: "Qo’ylar orasida oq mushak kasalligi tarqayapti. ",
                    ripeningTime: "22-noyabr, 2022-yil",
                    firstPercent: 52,
                    food: 'Yetilish ko’rsatkichi',
                    foodTitle: "Yemishlari (2)",
                    percentMeture: 50,
                    imageFirst: Constant.beda,
                    imageSecond: Constant.bugdoy,
                    firstFood: "Beda",
                    secondFood: 'Bug’doy',
                    secondPersent: 8,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
