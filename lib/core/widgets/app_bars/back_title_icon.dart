import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:halal_farm/core/constant/color_constant.dart';
import 'package:halal_farm/core/constant/constant.dart';
import 'package:halal_farm/core/constant/size_config.dart';
import 'package:halal_farm/core/extensions/extension.dart';
import 'package:halal_farm/core/widgets/text_styles.dart';

class BackAmdTitleAndIcon extends StatelessWidget {
  String title;

  Function? ontap;
  BackAmdTitleAndIcon({
    Key? key,
    required this.title,
    this.ontap,
  }) : super(key: key);

  @override
  PreferredSizeWidget build(BuildContext context) {
    return AppBar(
      backgroundColor: ColorConst.frame,
      automaticallyImplyLeading: false,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            child: Row(
              children: [
                Icon(
                  Icons.arrow_back_ios_new_rounded,
                  size: getW(20),
                  color: ColorConst.blue,
                ).onT(ontap: () {
                  Navigator.pop(context);
                }),
                Text(
                  'Ortga',
                  style: TextStyles.BoldText600(sz: 17, col: ColorConst.blue),
                ),
              ],
            ),
          ).onT(ontap: () {
            Navigator.pop(context);
          }),
          Text(
            title,
            style: TextStyles.BoldText600(sz: 18),
          ).op(r: 20),
          SvgPicture.asset(Constant.filter).onT(ontap: ontap)
        ],
      ),
    );
  }
}
