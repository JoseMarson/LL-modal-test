import 'package:flutter/material.dart';
import 'package:locallog_web_modal/src/theme/app_theme.dart';

class FirstDeliveryWidget extends StatelessWidget {
  final String buttonText;
  final VoidCallback? onPressed;
  final double containerWidth;
  final double containerHeight;

  FirstDeliveryWidget({
    required this.buttonText,
    this.onPressed,
    required this.containerWidth,
    required this.containerHeight,
  });

  @override
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          width: containerWidth,
          height: containerHeight,
          decoration: BoxDecoration(
            border: Border.all(
              color: Color(0XFF00B73E),
              width: 1,
            ),
            borderRadius: BorderRadius.circular(40.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Você ganhou ",
                          style: AppTheme.textStyles.modalFirstDeliveryMensage1,
                        ),
                        TextSpan(
                          text: "50% de desconto",
                          style: AppTheme.textStyles.modalFirstDeliveryMensage2,
                        ),
                        TextSpan(
                          text: " na sua primeira entrega!",
                          style: AppTheme.textStyles.modalFirstDeliveryMensage1,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: onPressed,
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      AppTheme.colors.modalFirstDeliveryButtonBackGround,
                  padding: EdgeInsets.symmetric(horizontal: 15),
                ),
                child: Text(
                  buttonText,
                  style: AppTheme.textStyles.modalFirstDeliveryButton,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 0),
                child: Container(
                  padding: EdgeInsets.only(left: 8),
                  child: Image.asset(
                    'assets/images/gift.png',
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
