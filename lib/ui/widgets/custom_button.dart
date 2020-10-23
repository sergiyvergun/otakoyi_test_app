import 'package:flutter/material.dart';
import 'package:otakoyi_test_app/ui/styles/colors.dart';

class CustomButton extends StatelessWidget {
  final Function onPressed;
  final String title;
  final Color titleColor;
  final Color backgroundColor;
  final Widget trailing;
  final Color borderColor;

  const CustomButton(
      {Key key,
      this.onPressed,
      this.title,
      this.titleColor = Colors.white,
      this.backgroundColor = SurfaceColors.darkBlue,
      this.trailing,
      this.borderColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: double.infinity,
      child: FlatButton(
        shape: borderColor != null
            ? RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4.0),
                side: BorderSide(color: borderColor, width: 2))
            : null,
        padding: EdgeInsets.symmetric(vertical: 17),
        color: backgroundColor,
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .subtitle1
                  .copyWith(color: titleColor),
            ),
            if (trailing != null)
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: trailing,
              )
          ],
        ),
      ),
    );
  }
}
