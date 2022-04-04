import 'package:flutter/material.dart';
import 'package:halal_farm/screens/dori_history/dori_history.dart';
import 'package:halal_farm/screens/foods_history/fods_histor_page.dart';
import 'package:halal_farm/screens/home_page/home_page.dart';
import 'package:halal_farm/screens/language_selection_page/language_selection_page.dart';
import 'package:halal_farm/screens/login_page/login_page.dart';
import 'package:halal_farm/screens/login_page/sing_in/sing_in.dart';
import 'package:halal_farm/screens/login_page/sing_up/sign_up.dart';
import 'package:halal_farm/screens/login_page/sms_password_page/sms_password_page.dart';
import 'package:halal_farm/screens/on_boarding_page/on_boarding_one.dart';
import 'package:halal_farm/screens/on_boarding_page/on_boarding_there.dart';
import 'package:halal_farm/screens/on_boarding_page/on_boarding_two.dart';
import 'package:halal_farm/screens/put_to_box/put_to_box.dart';
import 'package:halal_farm/screens/sale_conform/sale_conform.dart';
import 'package:halal_farm/screens/sale_page/sale_page.dart';
import 'package:halal_farm/screens/singel_dori_page/singel_dori_page.dart';
import 'package:halal_farm/screens/singel_page/singel_page.dart';
import 'package:halal_farm/screens/splash_screen/splash_screen.dart';
import 'package:halal_farm/screens/tarif_page.dart/tarif_page.dart';
import 'package:halal_farm/screens/uyimga_yetkazish/uyimga_yetkazish.dart';

class RouteGenerator {
  Route generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case "/splash_screen":
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case "/language_selection_page":
        return MaterialPageRoute(builder: (_) => const LanguageSelectionPage());
      case "/on_board_one":
        return MaterialPageRoute(builder: (_) => const OnBoardingOne());
      case "/on_board_two":
        return MaterialPageRoute(builder: (_) => const OnBoardingTwo());
      case "/on_board_there":
        return MaterialPageRoute(builder: (_) => const OnBoardingThere());
      case "/login_page":
        return MaterialPageRoute(builder: (_) => const LoginPage());
      case "/sign_up":
        return MaterialPageRoute(builder: (_) => const SignUpPage());
      case "/sign_in":
        return MaterialPageRoute(builder: (_) => const LoginPage());
      case "/sms_code":
        return MaterialPageRoute(builder: (_) => const SmsPasswrodPage());
      case "/akkaunt_login":
        return MaterialPageRoute(builder: (_) => const SignIn());
      case "/tarif_page":
        return MaterialPageRoute(builder: (_) => const TarifPage());
      case "/home_page":
        return MaterialPageRoute(builder: (_) => const HomePage());
      case "/singel_page":
        return MaterialPageRoute(builder: (_) => const SingelPage());
      case "/sale_page":
        return MaterialPageRoute(builder: (_) => const SalePage());
      case "/sale_conform_page":
        return MaterialPageRoute(builder: (_) => const SaleConform());
      case "/put_to_box":
        return MaterialPageRoute(builder: (_) => const PutToBox());
      case "/foods_history":
        return MaterialPageRoute(builder: (_) => const FoodsHistory());
      case "/dorilar_history":
        return MaterialPageRoute(builder: (_) => const DorilarHistory());
      case "/singel_dori_page":
        return MaterialPageRoute(builder: (_) => const SingelDoriPage());
      case "/uyimga_yetkazib_berish":
        return MaterialPageRoute(builder: (_) => const UyimgaYetkazish());
      default:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
    }
  }
}
