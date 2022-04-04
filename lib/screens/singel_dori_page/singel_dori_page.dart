import 'package:flutter/material.dart';
import 'package:halal_farm/core/constant/color_constant.dart';
import 'package:halal_farm/core/constant/constant.dart';
import 'package:halal_farm/core/constant/size_config.dart';
import 'package:halal_farm/core/extensions/extension.dart';
import 'package:halal_farm/core/widgets/text_styles.dart';

class SingelDoriPage extends StatelessWidget {
  const SingelDoriPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: getH(350),
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(Constant.dori),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: [
                  Container(
                    height: getH(74),
                    color: ColorConst.black.withOpacity(0.3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          child: SizedBox(
                            child: Row(
                              children: [
                                Icon(
                                  Icons.arrow_back_ios_new_rounded,
                                  size: getW(20),
                                  color: ColorConst.blue,
                                ),
                                Text(
                                  'Ortga',
                                  style: TextStyle(
                                    color: ColorConst.blue,
                                    fontSize: getW(17),
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ).onT(
                            ontap: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                        SizedBox(
                          width: getW(225),
                          child: Text(
                            "Furosemid (ukol)",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: ColorConst.black,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ],
                    ).op(t: 25, l: 8, r: 8),
                  ),
                ],
              ),
            ),
            Text(
              "Dori nomi",
              style: TextStyles.normalText400(
                col: ColorConst.grey,
              ),
            ).op(l: 16, t: 14, b: 4),
            Text(
              "Furosemid (ukol)",
              style: TextStyles.BoldText500(col: ColorConst.black),
            ).op(l: 16, b: 4),
            Text(
              "Izoh",
              style: TextStyles.normalText400(col: ColorConst.grey),
            ).op(l: 16, t: 20, b: 4),
            Text(
              "Quis tellus vitae ligula at. Et in tempus nec sed tincidunt in pretium. Volutpat tempus nec nunc sit fermentum, ridiculus mi turpis viverra.",
              style: TextStyles.BoldText500(col: ColorConst.black),
            ).op(l: 16, b: 4),
            Text(
              "Narxi",
              style: TextStyles.normalText400(
                col: ColorConst.grey,
              ),
            ).op(l: 16, t: 14, b: 4),
            Text(
              "23 000" " so’m",
              style: TextStyles.BoldText500(col: ColorConst.black),
            ).op(l: 16, b: 4),
            Text(
              "Doza",
              style: TextStyles.normalText400(
                col: ColorConst.grey,
              ),
            ).op(l: 16, t: 14, b: 4),
            Text(
              "1" " Doza",
              style: TextStyles.BoldText500(col: ColorConst.black),
            ).op(l: 16, b: 4),
            Text(
              "Xarid sanasi",
              style: TextStyles.normalText400(
                col: ColorConst.grey,
              ),
            ).op(l: 16, t: 14, b: 4),
            Text(
              "02.02.2022" " · " "14:49",
              style: TextStyles.BoldText500(col: ColorConst.black),
            ).op(l: 16, b: 4),
            Text(
              "Status",
              style: TextStyles.normalText400(
                col: ColorConst.grey,
              ),
            ).op(l: 16, t: 14, b: 4),
            Text(
              "Ishlatildi " "(03.02.2022)",
              style: TextStyles.BoldText500(col: ColorConst.greenBold),
            ).op(l: 16, b: 32),
          ],
        ),
      ),
    );
  }
}
