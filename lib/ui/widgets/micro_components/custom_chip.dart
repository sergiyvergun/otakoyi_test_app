import 'package:flutter/material.dart';
import 'package:otakoyi_test_app/ui/styles/colors.dart';

class CustomChip extends StatelessWidget {
  final Widget leading;
  final String labelText;
  final String valueText;

  const CustomChip({Key key, this.labelText, this.valueText, this.leading})
      : super(key: key);

  get borderColor {
    if (valueText == null) {
      return SurfaceColors.mediumGrey;
    } else
      return SurfaceColors.gold;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.0),
        border: Border.all(color: borderColor, width: 2),
        color: SurfaceColors.white,
      ),
      padding: EdgeInsets.symmetric(horizontal: 7, vertical: 5),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (leading != null)
            Padding(
              padding: const EdgeInsets.only(right: 5.0),
              child: leading,
            ),
          if (labelText != null)
            Text(
              labelText,
              style: Theme.of(context).textTheme.caption,
            ),
          if (valueText != null)
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
