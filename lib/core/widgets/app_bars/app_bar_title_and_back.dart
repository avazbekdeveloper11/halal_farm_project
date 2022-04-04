import 'package:flutter/material.dart';
import 'package:halal_farm/core/constant/color_constant.dart';
import 'package:halal_farm/core/constant/constant.dart';
import 'package:halal_farm/core/constant/size_config.dart';
import 'package:halal_farm/core/extensions/extension.dart';

class BackAndTitleAppBar extends StatelessWidget {
  final String title;

  const BackAndTitleAppBar({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            child: SizedBox(
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_back_ios_new_rounded,
                    size: getW(30),
                    color: ColorConst.blue,
                  ),
                  Text(
                    'Ortga',
                    style: TextStyle(
                      color: ColorConst.blue,
                      fontSize: getW(17),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ).onT(
              ontap: () {
                Navigator.pop(context);
              },
            ),
          ),
          SizedBox(
            width: getW(225),
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: ColorConst.white,
                fontSize: 18,
              ),
            ),
          ),
        ],
      ).op(t: 25, l: 8, r: 8),
    );
  }
}
