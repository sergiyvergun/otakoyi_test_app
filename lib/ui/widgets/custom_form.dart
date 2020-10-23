import 'package:flutter/material.dart';
import 'package:otakoyi_test_app/ui/styles/colors.dart';
import 'package:otakoyi_test_app/ui/widgets/custom_pop_menu_button.dart';

class CustomForm extends StatelessWidget {
  final String hintText;
  final String labelText;
  final String initialText;
  final Widget suffixIcon;
  final Widget suffix;
  final TextEditingController controller;
  final Function(String) onChanged;
  final List<PopUpMenuItemDetails> popupMenuDetails;

  const CustomForm({
    Key key,
    this.hintText,
    this.labelText,
    this.suffixIcon,
    this.initialText,
    this.suffix,
    this.controller,
    this.onChanged,
    this.popupMenuDetails,
  }) : super(key: key);

  get borderRadius => BorderRadius.circular(6);

  get border => OutlineInputBorder(
        borderSide: BorderSide(color: SurfaceColors.mediumGrey, width: 1.0),
      );

  /// if there is no Popup Menu Items - it's a TextFormField, in other case it's a
  /// field for selecting a value from Popup Menu.
  /// Made this way because of specific border, which can be implemented
  /// only with InputDecoration
  bool get enabledTextInput {
    if (popupMenuDetails == null) {
      return true;
    } else
      return false;
  }

  @override
  Widget build(BuildContext context) {
    return CustomPopMenuButton(
      showMenu: !enabledTextInput,
      onSelected: (String value) {
        controller.text = value;
      },
      details: popupMenuDetails,
      child: TextFormField(
        controller: controller,
        onChanged: (String value) {
          onChanged(value);
        },
        initialValue: initialText,
        style: Theme.of(context)
            .textTheme
            .subtitle1
            .copyWith(color: TypographyColors.darkBlue),
        cursorColor: TypographyColors.darkBlue,
        decoration: InputDecoration(
            filled: true,
            fillColor: SurfaceColors.white,
            suffix: suffix,
            suffixIcon: suffixIcon,
            contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 18),
            focusedBorder: border,
            enabledBorder: border,
            disabledBorder: border,
            labelText: labelText,
            labelStyle: Theme.of(context).textTheme.caption,
            hintStyle: Theme.of(context).textTheme.subtitle1,
            hintText: hintText),
        onTap: () {},
        enabled: enabledTextInput,
      ),
    );
  }
}
