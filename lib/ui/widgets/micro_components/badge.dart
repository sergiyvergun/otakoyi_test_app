import 'package:flutter/material.dart';
import 'package:otakoyi_test_app/ui/styles/colors.dart';

class Badge extends StatelessWidget {
  final int number;
  final Widget child;

  const Badge({
    Key key,
    @required this.child,
    @required this.number,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      overflow: Overflow.visible,
      alignment: Alignment.topRight,
      children: [
        child,
        Positioned(
          left: 10,
          child: Container(
            height: 12,
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
