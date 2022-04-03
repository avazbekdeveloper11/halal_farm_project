import 'package:flutter/material.dart';
import 'package:halal_farm/core/constant/color_constant.dart';
import 'package:halal_farm/core/widgets/farms_widget/farms_widget.dart';
import 'package:halal_farm/screens/home_page/components/animals_card_builder.dart';
import 'package:halal_farm/screens/home_page/components/balans_app_bar.dart';
import 'package:halal_farm/screens/home_page/components/farms_banner.dart';
import 'package:halal_farm/screens/home_page/components/my_animals.dart';
import 'package:halal_farm/screens/home_page/components/show_all_button.dart';
import 'package:halal_farm/screens/home_page/components/you_may_like_builder.dart';
import 'package:halal_farm/screens/home_page/components/you_me_like.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.greenBold,
      body: const CustomScrollView(
        slivers: [
          BalansAppBar(),
          MyAnimals(),
          AnimalsCardBuilder(),
          YouMayLike(),
          YouMayLikeBuilder(),
          FarmsBanner(),
          Farms(),
          ShowAllAnimalsButton(),
        ],
      ),
    );
  }
}
