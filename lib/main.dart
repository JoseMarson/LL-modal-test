import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:locallog_web_modal/src/app_module.dart';
import 'package:locallog_web_modal/src/app_widget.dart';

void main() {
  runApp(ModularApp(module: AppModule(), child: AppWidget()));
}
