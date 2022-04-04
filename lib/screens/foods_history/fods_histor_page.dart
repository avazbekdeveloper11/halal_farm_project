import 'package:flutter/material.dart';
import 'package:halal_farm/core/constant/constant.dart';
import 'package:halal_farm/core/extensions/extension.dart';
import 'package:halal_farm/core/widgets/app_bars/back_title_icon.dart';
import 'package:halal_farm/core/widgets/text_styles.dart';

class FoodsHistory extends StatelessWidget {
  const FoodsHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BackAmdTitleAndIcon(
        title: "Yemishlar tarixi",
        
      ).build(context),
      body: ListView.builder(
        itemBuilder: (_, __) {
          return ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage(Constant.bugdoy)),
            title: Row(
              children: [
                Text(
                  "Beda" "  | ",
                  style: TextStyles.BoldText500(sz: 17),
                ).op(r: 5),
                Text(
                  "5" "kg",
                  style: TextStyles.BoldText500(sz: 17),
                ),
              ],
            ),
            subtitle: const Text("9 000 " " so’m"),
            trailing: const Text("04.12.2019").op(t: 18),
          );
        },
      ),
    );
  }
}
