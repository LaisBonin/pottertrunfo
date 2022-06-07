import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:potter_trunfo/core/design/app_colors.dart';


dialogBox(
  BuildContext mycontext,
  String titleText,
  String contentText,
  String buttonText,
  Function()? onpressed,
) {
  return showDialog(
    
    context: mycontext,
    builder: (context) => AlertDialog(
      contentPadding: const EdgeInsets.fromLTRB(30, 30, 10, 10),
      backgroundColor: AppColors.primarywhite,
            title: Text(
        titleText,
        style: TextStyle(
            fontFamily: GoogleFonts.secularOne().fontFamily,
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: AppColors.primarygreen),
        textAlign: TextAlign.center,
      ),
      content: Text(
        contentText,
        style: TextStyle(
            fontFamily: GoogleFonts.secularOne().fontFamily,
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: AppColors.primarygreen),
        textAlign: TextAlign.center,
      ),
      actions: <Widget>[
        OutlinedButton(
          onPressed: onpressed,
          child: Text(
            buttonText,
            style: TextStyle(
                fontFamily: GoogleFonts.secularOne().fontFamily,
                fontSize: 12,
                color: AppColors.primarygreen),
          ),
        )
      ],
    ),
  );
}