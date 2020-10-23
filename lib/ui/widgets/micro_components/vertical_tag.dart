import 'package:flutter/material.dart';
import 'package:otakoyi_test_app/ui/styles/colors.dart';

class VerticalTag extends StatelessWidget {
  final String labelText;
  final String valueText;

  const VerticalTag({Key key, this.labelText, this.valueText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            labelText,
            style: Theme.of(context)
                .textTheme
                .caption
                .copyWith(color: TypographyColors.grey),
          ),
          Container(height: 7),
          Text(
            valueText,
            style: Theme.of(context)
                .textTheme
                .subtitle1
                .copyWith(color: TypographyColors.darkBlue),
          ),
        ],
      ),
    );
  }
}
