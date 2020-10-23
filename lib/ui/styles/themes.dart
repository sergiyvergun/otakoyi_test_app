import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otakoyi_test_app/ui/styles/colors.dart';

class Themes {
  var lightTheme = ThemeData(
      textTheme: TextTheme(
    subtitle1: GoogleFonts.workSans(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: TypographyColors.grey,
    ),
    headline1: GoogleFonts.workSans(
      fontSize: 24,
      fontWeight: FontWeight.w600,
      color: TypographyColors.darkBlue,
    ),
    headline2: GoogleFonts.workSans(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: TypographyColors.darkBlue,
    ),
    caption: GoogleFonts.workSans(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: TypographyColors.darkBlue.withOpacity(0.6),
    ),
    // bottom bar text style
    bodyText2: GoogleFonts.workSans(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: TypographyColors.darkBlue.withOpacity(0.6),
    ),
  ));
}
