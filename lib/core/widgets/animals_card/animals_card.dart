import 'package:flutter/material.dart';
import 'package:halal_farm/core/constant/color_constant.dart';
import 'package:halal_farm/core/constant/constant.dart';
import 'package:halal_farm/core/constant/size_config.dart';
import 'package:halal_farm/core/extensions/extension.dart';
import 'package:halal_farm/core/widgets/decoration_widget.dart';
import 'package:halal_farm/core/widgets/percent/persent_type_power.dart';
import 'package:halal_farm/core/widgets/percent/trafic_widget.dart';
import 'package:halal_farm/core/widgets/text_styles.dart';
import 'package:halal_farm/core/widgets/warning_dieaise/warning_dieaise.dart';

class AnimalsCard extends StatelessWidget {
  String title;
  String animalImage;
  String ripeningTime;
  int foodNumber;
  int percentMeture;
  String imageFirst;
  String firstFoodName;
  String imageSecond;
  String secondFoodName;
  int firstPercent;
  int secondPersent;
  String? disease;
  AnimalsCard({
    Key? key,
    required this.title,
    required this.animalImage,
    this.disease = "",
    required this.ripeningTime,
    required this.foodNumber,
    required this.percentMeture,
    required this.imageFirst,
    required this.imageSecond,
    required this.firstFoodName,
    required this.secondFoodName,
    required this.secondPersent,
    required this.firstPercent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: ColorConst.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyles.BoldText600(sz: 20),
          ).sp(v: 24, h: 20),
          Container(
            height: getH(194),
            width: getW(319),
            decoration: MyDeco.radiusAndImage(8, image: animalImage),
          ).onT(ontap: () {
            Navigator.pushNamed(context, "/singel_page");
          }).op(b: 12, l: 20),
          // Warning chiqarish uchun
          warningDisease(text: disease).build(context),
          //
          Row(
            children: [
              Column(
                children: [
                  SizedBox(
                    width: getW(158),
                    child: Text(
                      "Yetilish ko’rsatkichi",
                      style: TextStyles.BoldText500(
                        col: ColorConst.dark,
                      ),
                    ),
                  ).op(b: 12),
                  SizedBox(
                    width: getW(156),
                    child: Text(
                      "Taxminiy yetilish sanasi: $ripeningTime",
                      style: TextStyles.BoldText500(
                        sz: 14,
                        col: ColorConst.grey,
                      ),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Text(
                "$percentMeture %",
                style: TextStyles.BoldText500(sz: 18),
              ).op(r: 8),
              percentTypePower(percent: (100 - percentMeture.toInt() /*bu*/))
            ],
          ).op(b: 24, l: 20, r: 20, t: 8),
          Text(
            "Yemishlari ($foodNumber)",
            style: TextStyles.BoldText500(),
          ).op(l: 20),
          TrafficFoizi(
            image: imageFirst,
            title: "$firstFoodName ($firstPercent%)",
            percent: (100 - firstPercent.toInt() /*bu*/),
          ),
          TrafficFoizi(
            image: imageSecond,
            title: "$secondFoodName ($secondPersent%)",
            percent: (100 - secondPersent.toInt() /*bu*/),
          ),
        ],
      ).op(b: 27),
    );
  }
}
