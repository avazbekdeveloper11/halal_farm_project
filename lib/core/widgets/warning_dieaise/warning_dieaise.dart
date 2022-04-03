import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:halal_farm/core/constant/color_constant.dart';
import 'package:halal_farm/core/constant/constant.dart';
import 'package:halal_farm/core/constant/size_config.dart';
import 'package:halal_farm/core/extensions/extension.dart';
import 'package:halal_farm/core/widgets/decoration_widget.dart';
import 'package:halal_farm/core/widgets/text_styles.dart';

class warningDisease extends StatelessWidget {
  String? text;
  warningDisease({Key? key, this.text = ' '}) : super(key: key);

  @override
  Visibility build(BuildContext context) {
    return Visibility(
      visible: text!.trim().isNotEmpty ? true : false,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset(Constant.warning),
              SizedBox(
                width: getW(280),
                child: Text(
                  text.toString(),
                  style: TextStyles.BoldText500(col: ColorConst.red, sz: 17),
                ),
              ),
            ],
          ).sp(h: 22),
          Container(
            child: Center(
              child: Text(
                "Dori sotib olish",
                style: TextStyles.BoldText600(
                  col: ColorConst.dark,
                  sz: 15,
                ),
              ).onT(
                ontap: () {
                  print("Dori sotib ollish");
                },
              ),
            ),
            height: getH(46),
            width: getW(319),
            decoration: MyDeco.radiusAndColor(
              8,
              color: ColorConst.dark,
            ),
          ).op(t: 16, b: 24),
        ],
      ),
    );
  }
}
