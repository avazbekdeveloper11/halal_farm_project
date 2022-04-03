import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:halal_farm/core/constant/color_constant.dart';
import 'package:halal_farm/core/constant/constant.dart';
import 'package:halal_farm/core/constant/size_config.dart';
import 'package:halal_farm/core/extensions/extension.dart';
import 'package:halal_farm/core/widgets/text_styles.dart';
import 'package:halal_farm/core/widgets/warning_dieaise/warning_dieaise.dart';

class SingelPage extends StatelessWidget {
  const SingelPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: getH(350),
                width: getW(375),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(Constant.horse),
                    fit: BoxFit.cover,
                  ),
                ),
                alignment: const Alignment(-1, -1),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      child: Row(children: [
                        Icon(
                          Icons.arrow_back_ios_new_rounded,
                          size: getW(30),
                          color: ColorConst.blue,
                        ).onT(ontap: () {
                          Navigator.pop(context);
                        }),
                        Text(
                          'Ortga',
                          style: TextStyles.BoldText600(
                              sz: 17, col: ColorConst.blue),
                        ).onT(ontap: () {
                          Navigator.pop(context);
                        }),
                      ]),
                    ),
                    SizedBox(
                      width: getW(225),
                      child: Text(
                        "Denov oti (№254)",
                        textAlign: TextAlign.center,
                        style: TextStyles.BoldText600(
                          col: ColorConst.white,
                          sz: 18,
                        ),
                      ),
                    ),
                    SvgPicture.asset(Constant.live_video)
                  ],
                ).op(t: 15, l: 8, r: 8),
              ).op(b: 18),
              warningDisease(
                  text: "Otlar orasida oq mushak kasalligi tarqayapti. "),
              SizedBox(
                width: double.infinity,
                child: Wrap(
                  crossAxisAlignment: WrapCrossAlignment.start,
                  runSpacing: 16,
                  spacing: getW(16),
                  children: [
                    Container(
                      color: ColorConst.frame,
                      height: getH(47),
                      width: getW(101),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(Constant.warning),
                          Text("8 oylik")
                        ],
                      ),
                    ),
                    Container(
                      color: ColorConst.frame,
                      width: getW(169),
                      height: getH(47),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(Constant.warning),
                          Text("3 250 000 so’m")
                        ],
                      ),
                    ),
                    Container(
                      color: ColorConst.frame,
                      width: getW(211),
                      height: getH(47),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(Constant.warning),
                          Text("New Uzbekistan Farm")
                        ],
                      ),
                    ),
                    Container(
                      color: ColorConst.frame,
                      width: getW(225),
                      height: getH(47),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(Constant.warning),
                          Text("Xarid sanasi: 28.11.2021")
                        ],
                      ),
                    ),
                  ],
                ),
              ).sp(h: 16)
            ],
          ),
        ),
      ),
    );
  }
}
