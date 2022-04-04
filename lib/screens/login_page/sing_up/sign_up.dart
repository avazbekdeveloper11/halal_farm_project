import 'package:flutter/material.dart';
import 'package:halal_farm/core/constant/constant.dart';
import 'package:halal_farm/core/extensions/extension.dart';
import 'package:halal_farm/core/widgets/app_bars/app_bar.dart';
import 'package:halal_farm/core/widgets/my_buttons.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppBars.appBarlogin(context, 'Ro’yxatdan o’tish')
                  .op(t: 10, b: 24, l: 14),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "To’liq ism-familiyangiz",
                ),
              ).sp(h: 16),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "Tug’ilgan sanangiz",
                ),
                onTap: () {},
              ).sp(h: 16),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "Telefon raqamingiz",
                ),
              ).sp(h: 16),
              Constant.IjtimoiyTarmoqlarda().op(t: 87, b: 24),
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
              GrenButton(text: "Keyingisi").onT(
                ontap: () {
                  Navigator.pushNamed(context, '/sms_code');
                },
              ).op(l: 16, r: 16, b: 16, t: 85),
            ],
          ),
        ),
      ),
    );
  }
}
