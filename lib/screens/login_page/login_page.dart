import 'package:flutter/material.dart';
import 'package:halal_farm/core/constant/color_constant.dart';
import 'package:halal_farm/core/constant/constant.dart';
import 'package:halal_farm/core/constant/size_config.dart';
import 'package:halal_farm/core/extensions/extension.dart';
import 'package:halal_farm/core/widgets/my_buttons.dart';
import 'package:halal_farm/core/widgets/text_styles.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.greenBold,
      body: SafeArea(
        child: Column(
          children: [
            Text(
              "Skip",
              style: TextStyles.normalText400(col: ColorConst.white, sz: 17),
            ).op(l: 326, t: 22),
            Image.asset(
              Constant.halalFarmWhiteLogo,
              height: getH(60),
              width: getW(200),
            ).op(t: 16, b: 80),
            Text(
              "Chorva hayvonlarini onlayn boqish",
              style: TextStyles.BoldText700(sz: 36, col: ColorConst.white),
            ).sp(h: 16),
            Text(
              "Xuddi “My Tom Cat” dagidek. Faqat haqiqiy hayvonlarni. Maqsad: musulmon aholini o’zi ishonadigan halol go’sht bilan ta’minlash",
              style: TextStyles.normalText400(col: ColorConst.white),
            ).sp(h: 16, v: 16),
            const Spacer(),
            whiteButton(text: "Ro’yxatdan o’tish").onT(
              ontap: () {
                Navigator.pushNamed(context, '/sign_up');
              },
            ).sp(h: 16, v: 30),
            Text(
              "Akkauntga kirish",
              style: TextStyles.normalText400(col: ColorConst.white),
            ).onT(ontap: () {
              Navigator.pushNamed(context, '/akkaunt_login');
            }).op(b: 26),
          ],
        ),
      ),
    );
  }
}
