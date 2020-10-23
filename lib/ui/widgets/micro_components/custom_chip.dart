import 'package:flutter/material.dart';
import 'package:otakoyi_test_app/ui/styles/colors.dart';

class CustomChip extends StatelessWidget {
  final String labelText;
  final String valueText;

  const CustomChip(
      {Key key, @required this.labelText, @required this.valueText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.0),
        border: Border.all(color: SurfaceColors.gold, width: 2),
        color: SurfaceColors.white,
      ),
      padding: EdgeInsets.symmetric(horizontal: 7, vertical: 5),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            labelText,
            style: Theme.of(context).textTheme.caption,
          ),
          Text(
            valueText,
            style: Theme.of(context)
                .textTheme
                .caption
                .copyWith(color: TypographyColors.darkBlue),
          ),
        ],
      ),
    );
  }
}
