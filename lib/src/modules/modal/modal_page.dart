import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:locallog_web_modal/src/modules/modal/widgets/contact_button_widget.dart';
import 'package:locallog_web_modal/src/modules/modal/widgets/first_delivery_widget.dart';
import 'package:locallog_web_modal/src/modules/modal/widgets/help_widget.dart';

import 'package:locallog_web_modal/src/theme/app_theme.dart';

class ModalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double modalWidth = MediaQuery.of(context).size.width * 0.5;
    double modalHeight = MediaQuery.of(context).size.height * 0.82;

    String userName = "Fernanda";

    void closeModal() {
      Modular.to.pop();
    }

    return Dialog(
      insetPadding: EdgeInsets.all(0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12.0),
        child: Container(
          width: modalWidth,
          height: modalHeight,
          padding: EdgeInsets.all(16.0),
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: closeModal,
                    child: Icon(
                      Icons.close,
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.only(left: 8),
                alignment: Alignment.centerLeft,
                child: Text(
                  "👋 Olá, $userName!",
                  style: AppTheme.textStyles.modalUserName,
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 15, top: 15),
                child: Text(
                  "Agradecemos por se cadastrar na LocalLog.",
                  style: AppTheme.textStyles.modalThanks,
                ),
              ),
              SizedBox(height: 30),
              FirstDeliveryWidget(
                buttonText: "Solicitar entrega",
                onPressed: () {},
                containerWidth: modalWidth * 0.90,
                containerHeight: 55,
              ),
              SizedBox(height: 25),
              HelpWidget(title: "Precisa de ajuda?"),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  "Prefere falar com alguém?",
                  style: AppTheme.textStyles.modalQuestions,
                ),
              ),
              SizedBox(height: 30),
              ContactButtonWidget(modalWidth: modalWidth)
            ],
          ),
        ),
      ),
    );
  }
}
