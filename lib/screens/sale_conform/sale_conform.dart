import 'package:flutter/material.dart';
import 'package:halal_farm/core/constant/color_constant.dart';
import 'package:halal_farm/core/constant/size_config.dart';
import 'package:halal_farm/core/extensions/extension.dart';
import 'package:halal_farm/core/widgets/app_bars/app_bar_title_and_back.dart';
import 'package:halal_farm/core/widgets/decoration_widget.dart';
import 'package:halal_farm/core/widgets/text_styles.dart';
import 'package:halal_farm/core/widgets/title_and_subtitle/title_and_subtitle.dart';

class SaleConform extends StatelessWidget {
  const SaleConform({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const BackAndTitleAppBar(title: "Sotuvga qo’yish"),
            const TItleSubtitleTile(
              title: "Hayvon",
              subtitle: "Denov oti (№254)",
            ),
            const TItleSubtitleTile(
              title: "Yoshi",
              subtitle: "8 oylik",
            ),
            const TItleSubtitleTile(
              title: "Fermasi",
              subtitle: "New Uzbekistan Farm",
            ),
            const TItleSubtitleTile(
              title: "Siz qo’ygan narx",
              subtitle: "3 250 000" " so'm",
            ),
            Container(
              height: getH(56),
              width: getW(343),
              decoration: MyDeco.radius(12, color: ColorConst.greenBold),
              child: Center(
                child: Text(
                  "Tasdiqlash",
                  style: TextStyles.greenButtonTextStyle(),
                ),
              ),
            ).onT(ontap: () {
              Navigator.pushNamed(context, "/put_to_box");
            }).op(t: 5, b: 8),
          ],
        ),
      ),
    );
  }
}
