import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:locallog_web_modal/src/theme/app_theme.dart';

abstract class AppTextStyles {
  TextStyle get logoTitle;
  TextStyle get modalUserName;
  TextStyle get modalThanks;
  TextStyle get modalFirstDeliveryMensage1;
  TextStyle get modalFirstDeliveryMensage2;
  TextStyle get modalFirstDeliveryButton;
  TextStyle get modalQuestions;
  TextStyle get modalVideoButtonText;
  TextStyle get modalVideoButtonText2;
  TextStyle get modalContactButtonText;
  TextStyle get modalContactButtonText1;
}

class AppTextStylesDefault implements AppTextStyles {
  @override
  TextStyle get logoTitle => GoogleFonts.dmSans(
        fontSize: 22,
        fontWeight: FontWeight.w700,
        color: AppTheme.colors.logoTitle,
      );
  @override
  TextStyle get modalUserName => GoogleFonts.dmSans(
        fontSize: 22,
        fontWeight: FontWeight.w600,
        color: AppTheme.colors.modalUserName,
      );
  TextStyle get modalThanks => GoogleFonts.dmSans(
        fontSize: 13,
        fontWeight: FontWeight.w500,
        color: AppTheme.colors.modalThanks,
      );
  TextStyle get modalFirstDeliveryMensage1 => GoogleFonts.dmSans(
        fontSize: 13,
        fontWeight: FontWeight.w600,
        color: AppTheme.colors.modalFirstDeliveryMensage1,
      );
  TextStyle get modalFirstDeliveryMensage2 => GoogleFonts.dmSans(
        fontSize: 13,
        fontWeight: FontWeight.w600,
        color: AppTheme.colors.modalFirstDeliveryMensage2,
      );
  TextStyle get modalFirstDeliveryButton => GoogleFonts.poppins(
        fontSize: 9,
        fontWeight: FontWeight.w500,
        color: AppTheme.colors.modalFirstDeliveryButton,
      );
  TextStyle get modalQuestions => GoogleFonts.dmSans(
        fontSize: 15,
        fontWeight: FontWeight.w700,
        color: AppTheme.colors.modalQuestions,
      );
  TextStyle get modalVideoButtonText => GoogleFonts.dmSans(
        fontSize: 12,
        fontWeight: FontWeight.w700,
        color: AppTheme.colors.modalVideoButtonText,
      );
  TextStyle get modalVideoButtonText2 => GoogleFonts.dmSans(
        fontSize: 12,
        fontWeight: FontWeight.w700,
        color: AppTheme.colors.modalVideoButtonText2,
      );
  TextStyle get modalContactButtonText => GoogleFonts.dmSans(
        fontSize: 14,
        fontWeight: FontWeight.w700,
        color: AppTheme.colors.modalContactButtonText,
      );
  TextStyle get modalContactButtonText1 => GoogleFonts.dmSans(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: AppTheme.colors.modalContactButtonText,
      );
}
