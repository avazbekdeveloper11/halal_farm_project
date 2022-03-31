import 'package:flutter/material.dart';
import 'package:halal_farm/core/constant/color_constant.dart';
import 'package:halal_farm/core/constant/constant.dart';
import 'package:halal_farm/core/constant/size_config.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 3),
      () => Navigator.pushReplacementNamed(context, "/language_selection_page"),
    );
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      backgroundColor: ColorConst.greenBold,
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Image.asset(
                Constant.halalFarmWhiteLogo,
                height: getH(38),
                width: getW(126),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
