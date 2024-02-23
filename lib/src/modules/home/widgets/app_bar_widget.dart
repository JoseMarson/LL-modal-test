import 'package:flutter/material.dart';
import 'package:locallog_web_modal/src/theme/app_theme.dart';

class AppBarWidget extends PreferredSize {
  AppBarWidget()
      : super(
          child: Container(
            child: Column(
              children: [
                AppBar(
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  title: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset("assets/images/logo.png"),
                        Text(
                          "LocalLog",
                          style: AppTheme.textStyles.logoTitle,
                        ),
                      ],
                    ),
                  ),
                  automaticallyImplyLeading: false,
                ),
                Divider(
                  color: Color(0xFFD6D6D6),
                  height: 1,
                  thickness: 2,
                ),
              ],
            ),
          ),
          preferredSize: Size.fromHeight(64),
        );
}
