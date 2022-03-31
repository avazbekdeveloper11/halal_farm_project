import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:halal_farm/core/constant/color_constant.dart';
import 'package:halal_farm/core/constant/constant.dart';
import 'package:halal_farm/core/constant/size_config.dart';
import 'package:halal_farm/core/extensions/extension.dart';
import 'package:halal_farm/core/widgets/my_buttons.dart';
import 'package:halal_farm/core/widgets/text_styles.dart';

class SmsPasswrodPage extends StatelessWidget {
  const SmsPasswrodPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(Constant.xSvg).onT(ontap: () {
              Navigator.pop(context);
            }).op(l: 16, t: 10),
            Text(
              "SMS dagi kodni kiriting",
              style: TextStyles.normalText400(col: ColorConst.black, sz: 24),
            ).op(l: 68, b: 16),
            SizedBox(
              width: getW(343),
              height: getH(40),
              child: Center(
                child: Text(
                  "Kod ushbu raqamga yuborildi:\n+998 90 123 45 67",
                  textAlign: TextAlign.center,
                  style: TextStyles.normalText400(sz: 15),
                ),
              ),
            ).sp(h: 16),
            SizedBox(
              width: getW(132),
              height: getH(40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(Constant.oSvg),
                  SvgPicture.asset(Constant.oSvg).sp(h: 14),
                  SvgPicture.asset(Constant.oSvg).op(r: 14),
                  SvgPicture.asset(Constant.oSvg),
                ],
              ),
            ).sp(h: 122, v: 32),
            Text(
              "Kodni qaytadan yuborish (0:59)",
              textAlign: TextAlign.center,
              style: TextStyles.normalText400(sz: 17),
            ).op(l: 70, t: 9),
            const Spacer(),
            GrenButton(text: "Tasdiqlash", radius: 0).onT(ontap: () {
              Navigator.pushNamed(context, "/tarif_page");
            })
          ],
        ),
      ),
    );
  }
}
