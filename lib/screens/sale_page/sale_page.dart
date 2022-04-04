import 'package:flutter/material.dart';
import 'package:halal_farm/core/constant/color_constant.dart';
import 'package:halal_farm/core/constant/size_config.dart';
import 'package:halal_farm/core/extensions/extension.dart';
import 'package:halal_farm/core/widgets/app_bars/app_bar_title_and_back.dart';
import 'package:halal_farm/core/widgets/decoration_widget.dart';
import 'package:halal_farm/core/widgets/text_styles.dart';
import 'package:halal_farm/core/widgets/title_and_subtitle/title_and_subtitle.dart';

class SalePage extends StatelessWidget {
  const SalePage({Key? key}) : super(key: key);

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
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: "Narxi (so’mda)",
              ),
            ).op(l: 16, r: 16),
            Container(
              height: getH(56),
              width: getW(343),
              decoration: MyDeco.radius(12, color: ColorConst.greenBold),
              child: Center(
                child: Text(
                  "Sotuvga qo’yish",
                  style: TextStyles.greenButtonTextStyle(),
                ),
              ),
            ).onT(
              ontap: () {
                Navigator.pushNamed(context, "/sale_conform_page");
              },
            ).op(t: 24, b: 8),
            Text(
              "Savdoga qo’yilishdan oldin fermadagilar tasdig’idan o’tadi. ",
              style: TextStyles.normalText400(
                col: ColorConst.grey,
                sz: 13,
              ),
            ).op(r: 16, l: 16, b: 24),
          ],
        ),
      ),
    );
  }
}
