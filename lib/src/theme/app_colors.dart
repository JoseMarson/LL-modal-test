import 'package:flutter/material.dart';

abstract class AppColors {
  Color get logoTitle;
  Color get modalUserName;
  Color get modalThanks;
  Color get modalFirstDeliveryMensage1;
  Color get modalFirstDeliveryMensage2;
  Color get modalFirstDeliveryButton;
  Color get modalFirstDeliveryButtonBackGround;
  Color get modalQuestions;
  Color get modalVideoButtonText;
  Color get modalContactButtonText;
  Color get modalVideoButtonText2;
}

class AppColorsDefault implements AppColors {
  @override
  Color get logoTitle => Color(0xFF000000);

  @override
  Color get modalUserName => Color(0xFF00B73E);

  @override
  Color get modalThanks => Color(0xFF000000);

  @override
  Color get modalFirstDeliveryMensage1 => Color(0xFF000000);

  @override
  Color get modalFirstDeliveryMensage2 => Color(0xFF00B73E);

  @override
  Color get modalFirstDeliveryButton => Color(0xFFFFFFFF);

  @override
  Color get modalFirstDeliveryButtonBackGround => Color(0xFF00B73E);

  @override
  Color get modalQuestions => Color(0xFF000000);

  @override
  Color get modalVideoButtonText => Color(0xFF000000);
  @override
  Color get modalVideoButtonText2 => Color(0xFFC4C4C4);
  @override
  Color get modalContactButtonText => Color(0xFFFFFFFF);
}
