import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final Widget icon;
  final Function onPressed;

  const CustomIconButton(
      {Key key, @required this.icon, @required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: 0,
      child: FlatButton(
        onPressed: onPressed,
        shape: CircleBorder(),
        child: icon,
      ),
    );
  }
}
