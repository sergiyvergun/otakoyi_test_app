import 'package:flutter/material.dart';
import 'package:otakoyi_test_app/ui/styles/colors.dart';

class CustomButton extends StatelessWidget {
  final Function onPressed;
  final String title;
  final Color titleColor;
  final Color backgroundColor;

  const CustomButton(
      {Key key,
      this.onPressed,
      this.title,
      this.titleColor = Colors.white,
      this.backgroundColor = SurfaceColors.darkBlue})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4.0),
      ),
      padding: EdgeInsets.symmetric(vertical: 17),
      color: backgroundColor,
      onPressed: onPressed,
      child: Text(
        title,
        style:
            Theme.of(context).textTheme.subtitle1.copyWith(color: titleColor),
      ),
    );
  }
}
