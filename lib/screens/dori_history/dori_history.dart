import 'package:flutter/material.dart';
import 'package:halal_farm/core/constant/constant.dart';
import 'package:halal_farm/core/constant/size_config.dart';
import 'package:halal_farm/core/extensions/extension.dart';
import 'package:halal_farm/core/widgets/app_bars/back_title_icon.dart';
import 'package:halal_farm/core/widgets/text_styles.dart';

class DorilarHistory extends StatelessWidget {
  const DorilarHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BackAmdTitleAndIcon(title: "Dorilar tarixi").build(context),
      body: ListView.builder(
        itemBuilder: (_, __) {
          return ListTile(
            onTap: (){Navigator.pushNamed(context, "/singel_dori_page");},
            leading: CircleAvatar(backgroundImage: AssetImage(Constant.dori)),
            title: Row(
              children: [
                SizedBox(
                  width: getW(200),
                  child: Text(
                    "Furosemid (ukol)" " · " "1 doza",
                    style: TextStyles.BoldText500(sz: 17),
                  ).op(r: 5),
                ),
              ],
            ),
            subtitle: const Text("23 000" " so’m"),
            trailing: const Text("27.11.2019").op(t: 18),
          );
        },
      ),
    );
  }
}
