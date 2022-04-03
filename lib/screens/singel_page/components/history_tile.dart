import 'package:flutter/material.dart';
import 'package:halal_farm/core/constant/color_constant.dart';
import 'package:halal_farm/core/widgets/text_styles.dart';

class historyTile extends StatelessWidget {
  String food;
  int howMuch;
  historyTile({
    Key? key,
    required this.food,
    required this.howMuch,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: SizedBox(
        width: 200,
        height: 20,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              food,
              style: TextStyles.BoldText500(),
            ),
            Row(
              children: [
                SizedBox(
                  child: Text(
                    "$howMuch ta xarid",
                    style: TextStyles.normalText400(
                      col: ColorConst.grey,
                      sz: 16,
                    ),
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: ColorConst.grey,
                  size: 16,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
