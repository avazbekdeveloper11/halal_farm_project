import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:halal_farm/core/constant/constant.dart';
import 'package:halal_farm/core/constant/size_config.dart';
import 'package:halal_farm/core/extensions/extension.dart';
import 'package:halal_farm/core/widgets/my_buttons.dart';
import 'package:halal_farm/core/widgets/text_styles.dart';

class OnBoardingTwo extends StatelessWidget {
  const OnBoardingTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: getH(400),
            width: double.infinity,
            child: Image.asset(Constant.cow, fit: BoxFit.cover),
          ).op(b: 32),
          Text(
            "Ularni onlayn nazorat ostida fermada boqing",
            style: TextStyles.BoldText600(),
          ).sp(h: 16),
          SvgPicture.asset("assets/svg/two.svg").op(t: 32),
          const Spacer(),
          GrenButton(text: "Keyingisi").onT(ontap: () {
            Navigator.pushNamed(context, '/on_board_there');
          }).op(l: 16, r: 16, b: 16)
        ],
      ),
    );
  }
}
