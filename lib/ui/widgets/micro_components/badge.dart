import 'package:flutter/material.dart';
import 'package:otakoyi_test_app/ui/styles/colors.dart';

class Badge extends StatelessWidget {
  final int number;
  final Widget child;
  final double leftPositioned;
  final double bottomPositioned;

  const Badge({
    Key key,
    @required this.child,
    @required this.number,
    this.leftPositioned,
    this.bottomPositioned,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double size = 12;
    return Stack(
      overflow: Overflow.visible,
      alignment: Alignment.topRight,
      children: [
        child,
        Positioned(
          left: leftPositioned ?? 11,
          bottom: bottomPositioned ?? 12,
          child: Container(
            height: size,
            width: size,
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: NotificationColors.success),
            child: Center(
              child: Text(
                number.toString(),
                style: TextStyle(fontSize: 8, color: TypographyColors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
