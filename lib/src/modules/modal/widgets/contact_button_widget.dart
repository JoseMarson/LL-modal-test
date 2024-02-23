import 'package:flutter/material.dart';
import 'package:locallog_web_modal/src/theme/app_theme.dart';

class ContactButtonWidget extends StatelessWidget {
  final double modalWidth;

  ContactButtonWidget({required this.modalWidth});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: modalWidth * 0.90,
          height: 55,
          decoration: BoxDecoration(
            color: Color(0XFF085B53),
            borderRadius: BorderRadius.circular(40.0),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 26.0),
            child: Row(
              children: [
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Entre em contato com o ',
                          style: AppTheme.textStyles.modalContactButtonText1,
                        ),
                        TextSpan(
                          text: 'Suporte LocalLog',
                          style: AppTheme.textStyles.modalContactButtonText,
                        ),
                      ],
                    ),
                  ),
                ),
                Icon(Icons.arrow_forward, color: Colors.white),
                Image.asset(
                  'assets/images/contact.png',
                  width: 284.9,
                  height: 80,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
