import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:halal_farm/core/constant/constant.dart';
import 'package:halal_farm/core/constant/size_config.dart';
import 'package:halal_farm/core/extensions/extension.dart';
import 'package:halal_farm/core/widgets/my_buttons.dart';
import 'package:halal_farm/core/widgets/text_styles.dart';

class OnBoardingThere extends StatelessWidget {
  const OnBoardingThere({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: getH(400),
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(Constant.sheep), fit: BoxFit.cover),
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(30),
              ),
            ),
          ).op(b: 32),
          Text(
            "Hayvoningizni istalgan paytda yetkazib beramiz",
            style: TextStyles.BoldText600(),
          ).sp(h: 16),
          SvgPicture.asset("assets/svg/there.svg").op(t: 32),
          const Spacer(),
          GrenButton(text: "Keyingisi").onT(ontap: () {
            Navigator.pushNamed(context, '/login_page');
          }).op(l: 16, r: 16, b: 16)
        ],
      ),
    );
  }
}
