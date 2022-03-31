import 'package:flutter/material.dart';
import 'package:halal_farm/core/constant/constant.dart';
import 'package:halal_farm/core/extensions/extension.dart';
import 'package:halal_farm/core/widgets/app_bar.dart';
import 'package:halal_farm/core/widgets/my_buttons.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            AppBars.appBarlogin(context, 'Akkauntga kirish')
                .op(t: 10, b: 24, l: 14),
            TextFormField(
              decoration: const InputDecoration(
                labelText: "Telefon raqamingiz",
              ),
            ).sp(h: 16),
            Constant.IjtimoiyTarmoqlarda().op(t: 48, b: 24),
            MyButtonClass.withGoogleButton(
              'Google',
              Constant.googleSvg,
            ).sp(h: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyButtonClass.withGoogleButton(
                  'Apple',
                  Constant.appleSvg,
                  witht: 166,
                ),
                MyButtonClass.withGoogleButton(
                  'Facebook',
                  Constant.facebookSvg,
                  witht: 166,
                ),
              ],
            ).sp(h: 16, v: 12),
            const Spacer(),
            GrenButton(
              text: "Keyingisi",
              radius: 0,
            ).onT(ontap: () {
              Navigator.pushNamed(context, '/sms_code');
            }),
          ],
        ),
      ),
    );
  }
}
