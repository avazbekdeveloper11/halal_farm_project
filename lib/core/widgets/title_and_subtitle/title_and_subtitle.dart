import 'package:flutter/material.dart';
import 'package:halal_farm/core/extensions/extension.dart';
import 'package:halal_farm/core/widgets/text_styles.dart';

class TItleSubtitleTile extends StatelessWidget {
  final String title;
  final dynamic subtitle;
  const TItleSubtitleTile({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyles.normalText400(sz: 16),
      ),
      subtitle: Text(
        subtitle,
        style: TextStyles.BoldText600(sz: 18),
      ).op(t: 4),
    );
  }
}
