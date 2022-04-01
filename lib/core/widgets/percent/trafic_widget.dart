import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/parser.dart';
import 'package:halal_farm/core/constant/color_constant.dart';
import 'package:halal_farm/core/constant/constant.dart';
import 'package:halal_farm/core/constant/size_config.dart';
import 'package:halal_farm/core/extensions/extension.dart';
import 'package:halal_farm/core/widgets/decoration_widget.dart';

class TrafficFoizi extends StatelessWidget {
  String image;
  String title;
  int percent;
  TrafficFoizi({
    Key? key,
    required this.title,
    required this.percent,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Badge(
        elevation: 0,
        showBadge: percent > 80 ? true : false,
        toAnimate: false,
        position: const BadgePosition(bottom: -10, end: 0),
        badgeColor: Colors.transparent,
        badgeContent: SvgPicture.asset(Constant.plusRedSvg),
        child: CircleAvatar(
          radius: 35,
          backgroundImage: AssetImage(image),
        ),
      ),
      title: Text(title),
      subtitle: Container(
        height: getH(10),
        width: getW(double.infinity),
        decoration: MyDeco.radiusAndColor(48, color: ColorConst.grey),
        child: Container(
          decoration: MyDeco.radius(
            48,
            color: percent > 80 ? ColorConst.red : ColorConst.greenBold,
          ),
        ).op(r: (235 / 100) * percent),
      ),
    );
  }
}
