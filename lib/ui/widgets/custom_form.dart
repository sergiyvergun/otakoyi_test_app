import 'package:flutter/material.dart';
import 'package:otakoyi_test_app/ui/styles/colors.dart';

class CustomForm extends StatelessWidget {
  final String hintText;
  final String labelText;
  final String initialText;
  final bool enabled;
  final Widget suffixIcon;
  final Widget suffix;
  final TextEditingController controller;
  final Function(String) onChanged;

  const CustomForm({
    Key key,
    this.hintText,
    this.enabled = true,
    this.labelText,
    this.suffixIcon,
    this.initialText,
    this.suffix,
    this.controller,
    this.onChanged,
  }) : super(key: key);

  get borderRadius => BorderRadius.circular(6);

  get border => OutlineInputBorder(
        borderSide: BorderSide(color: SurfaceColors.mediumGrey, width: 1.0),
      );

  @override
  Widget build(BuildContext context) {
    return TextFormField(
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
      enabled: enabled,
    );
  }
}
