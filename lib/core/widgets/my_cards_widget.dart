import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:halal_farm/core/constant/color_constant.dart';
import 'package:halal_farm/core/constant/constant.dart';
import 'package:halal_farm/core/constant/size_config.dart';
import 'package:halal_farm/core/extensions/extension.dart';
import 'package:halal_farm/core/widgets/decoration_widget.dart';
import 'package:halal_farm/core/widgets/my_buttons.dart';
import 'package:halal_farm/core/widgets/text_styles.dart';

class MyCards {
  static Container tarifCard(context, {required tarifData}) {
    return Container(
      height: 491,
      width: double.infinity,
      decoration: MyDeco.tarifCardDeco(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            tarifData['name'],
            style: TextStyles.BoldText500(col: ColorConst.pink, sz: 20),
          ),
          Row(
            children: [
              Text(
                tarifData["price"].toString().split('/')[0].toString(),
                style: TextStyles.BoldText600(col: ColorConst.blueDark, sz: 36),
              ),
              Text(
                tarifData["price"].toString().split('/')[0].toString() ==
                        'Tekin'
                    ? ""
                    : " / har oyga",
                style:
                    TextStyles.normalText400(col: ColorConst.blueDark, sz: 18),
              )
            ],
          ).sp(v: 8),
          Text(
            tarifData["who"],
            style: TextStyles.normalText400(col: ColorConst.dark, sz: 16),
          ).op(b: 24),
          Row(
            children: [
              SvgPicture.asset(Constant.doneSvg).op(r: 15),
              SizedBox(
                width: getW(270),
                child: Text(
                  tarifData['about'][0],
                  style: TextStyles.BoldText500(sz: 16),
                ),
              )
            ],
          ).op(t: 34),
          Row(
            children: [
              SvgPicture.asset(Constant.doneSvg).op(r: 15),
              SizedBox(
                width: getW(270),
                child: Text(
                  tarifData['about'][1],
                  style: TextStyles.BoldText500(sz: 16),
                ),
              )
            ],
          ).sp(v: 20),
          Row(
            children: [
              SvgPicture.asset(Constant.doneSvg).op(r: 15),
              SizedBox(
                width: getW(270),
                child: Text(
                  tarifData['about'][2],
                  style: TextStyles.BoldText500(sz: 16),
                ),
              )
            ],
          ),
          Row(
            children: [
              SvgPicture.asset(Constant.doneSvg).op(r: 15),
              SizedBox(
                width: getW(270),
                child: Text(
                  tarifData['about'][3],
                  style: TextStyles.BoldText500(sz: 16),
                ),
              )
            ],
          ).op(t: 20),
          MyOutlineButton(
            text: "Tanlash",
          ).onT(
            ontap: () {
              Navigator.pushNamed(context, '/home_page');
            },
          ).op(t: 18),
        ],
      ).all(a: 20),
    );
  }
}
