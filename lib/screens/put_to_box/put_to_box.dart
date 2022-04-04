import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:halal_farm/core/constant/color_constant.dart';
import 'package:halal_farm/core/constant/constant.dart';
import 'package:halal_farm/core/constant/size_config.dart';
import 'package:halal_farm/core/extensions/extension.dart';
import 'package:halal_farm/core/widgets/decoration_widget.dart';
import 'package:halal_farm/core/widgets/text_styles.dart';

class PutToBox extends StatelessWidget {
  const PutToBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: ColorConst.frame,
        title: Text(
          "Sotuvga qo’yish",
          style: TextStyles.BoldText600(sz: 18),
        ),
      ),
      body: Column(
        children: [
          Text(
            "Sotish haqidagi arizangiz muvaffaqiyatli yuborildi",
            textAlign: TextAlign.center,
            style: TextStyles.BoldText600(sz: 20),
          ).op(t: 55, b: 8),
          Text(
            "Administratorlarimiz tez fursatlarda arizangizni ko’rib chiqishadi va ular tasdiqlashlari bilan e’loningiz dasturda paydo bo’ladi.",
            textAlign: TextAlign.center,
            style: TextStyles.normalText400(sz: 14, col: ColorConst.grey),
          ),
          Container(
            height: getH(220),
            width: getW(203),
            decoration: MyDeco.radius(12, color: ColorConst.white),
            child: Column(
              children: [
                Container(
                  height: getH(150),
                  width: double.infinity,
                  decoration:
                      MyDeco.radiusverImage(t: 12, image: Constant.horse),
                ),
                Container(
                  height: getH(60),
                  decoration: MyDeco.verticalR(b: 12),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Qzxorabayir toy " " · " "3 oylik",
                            style: TextStyles.normalText400(
                              col: ColorConst.dark,
                              sz: 13,
                            ),
                          ),
                        ],
                      ).op(t: 15, l: 10),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "3 250 000",
                            style: TextStyles.BoldText600(
                              sz: 20,
                            ),
                          ),
                          Text(
                            "  so'm",
                            style: TextStyles.BoldText600(
                              col: ColorConst.dark,
                              sz: 18,
                            ),
                          ).op(b: 2),
                        ],
                      ).op(t: 8, l: 10),
                    ],
                  ),
                ),
              ],
            ),
          ).op(t: 32, b: 29),
          Container(
            height: getH(56),
            decoration: MyDeco.radius(12, color: ColorConst.frame),
            child: Center(
              child: Text(
                "E’lonni ko’rish",
                style: TextStyles.BoldText600(sz: 16),
              ),
            ),
          ).op(b: 16),
          Container(
            height: getH(56),
            decoration: MyDeco.radius(12, color: ColorConst.greenBold),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(Constant.home).op(r: 8),
                Text("Uy sahifaga", style: TextStyles.greenButtonTextStyle()),
              ],
            ),
          ),
        ],
      ).sp(h: 16),
    );
  }
}
