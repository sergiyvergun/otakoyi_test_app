import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otakoyi_test_app/ui/styles/colors.dart';

class Themes {
  static var lightTheme = ThemeData(
      primaryColor: SurfaceColors.mediumGrey,
      textTheme: TextTheme(
        subtitle1: GoogleFonts.workSans(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: TypographyColors.grey,
        ),
        caption: GoogleFonts.workSans(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: TypographyColors.darkBlue.withOpacity(0.6),
        ),
      ));
}
