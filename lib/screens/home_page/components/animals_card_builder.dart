import 'package:flutter/material.dart';
import 'package:halal_farm/core/constant/color_constant.dart';
import 'package:halal_farm/core/data/data.dart';
import 'package:halal_farm/core/extensions/extension.dart';
import 'package:halal_farm/core/widgets/animals_card/animals_card.dart';

class AnimalsCardBuilder extends StatelessWidget {
  const AnimalsCardBuilder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (_, __) {
          return Container(
            color: ColorConst.frame,
            child: AnimalsCard(
              title: MyData.animalData[__]['title'],
              animalImage: MyData.animalData[__]['animalImage'],
              disease: MyData.animalData[__]['diease'],
              ripeningTime: MyData.animalData[__]['ripeningTime'],
              firstPercent: MyData.animalData[__]['firstPercent'],
              foodNumber: MyData.animalData[__]['foodNumber'],
              percentMeture: MyData.animalData[__]['percentMeture'],
              imageFirst: MyData.animalData[__]['imageFirst'],
              imageSecond: MyData.animalData[__]['imageSecond'],
              firstFoodName: MyData.animalData[__]['firstFoodName'],
              secondFoodName: MyData.animalData[__]['secondFoodName'],
              secondPersent: MyData.animalData[__]['secondPersent'],
            ).op(b: 8, r: 8, l: 8),
          );
        },
        childCount: MyData.animalData.length,
      ),
    );
  }
}
