import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


import 'app_colors.dart';
ThemeData theme() {
  return ThemeData(
    // fontFamily: GoogleFonts.openSans().fontFamily,
    textTheme: TextTheme(
      headline1: TextStyle(
        color: AppColors.primaryblue,
        fontWeight: FontWeight.normal,
        fontSize: 28,
        fontFamily: GoogleFonts.patrickHand().fontFamily,
      ),
      headline2: TextStyle(
        color: AppColors.primarywhite,
        fontWeight: FontWeight.normal,
        fontSize: 30,
        fontFamily: GoogleFonts.patrickHand().fontFamily,
      ),
      headline3: TextStyle(
        color: AppColors.primarywhite,
        fontWeight: FontWeight.normal,
        fontSize: 34,
        fontFamily: GoogleFonts.openSans().fontFamily,
      ),
      
    ),
  );
}