import 'package:flutter/material.dart';
import 'package:otakoyi_test_app/ui/styles/colors.dart';

class CustomPopMenuButton extends StatelessWidget {
  final Widget child;
  final List<PopUpMenuItemDetails> details;
  final Function(String value) onSelected;
  final bool showMenu;

  const CustomPopMenuButton(
      {Key key,
      @required this.child,
      @required this.details,
      this.onSelected,
      this.showMenu})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (showMenu)
      return PopupMenuButton(
        onSelected: (String value) {
          onSelected(value);
        },
        itemBuilder: (BuildContext context) {
          return details
              .map((PopUpMenuItemDetails d) => PopupMenuItem(
                    value: d.value,
                    child: Text(
                      d.value,
                      style: Theme.of(context)
                          .textTheme
                          .subtitle1
                          .copyWith(color: TypographyColors.darkBlue),
                    ),
                  ))
              .toList();
        },
        child: child,
      );
    else
      return child;
  }
}

class PopUpMenuItemDetails {
  final String value;

  PopUpMenuItemDetails({this.value});
}
