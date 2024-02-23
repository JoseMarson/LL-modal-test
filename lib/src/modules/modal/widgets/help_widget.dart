import 'package:flutter/material.dart';
import 'package:locallog_web_modal/src/modules/modal/widgets/video_button_widget.dart';
import 'package:locallog_web_modal/src/theme/app_theme.dart';

class HelpWidget extends StatelessWidget {
  final String title;

  HelpWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            title,
            style: AppTheme.textStyles.modalQuestions,
          ),
        ),
        SizedBox(height: 40),
        Row(
          children: [
            VideoButtonWidget(
              buttonText: "Como solicitar uma entrega",
              videoId: "video1.mp4",
              tamanho: 295,
              status: true,
            ),
            SizedBox(
              width: 10,
              height: 20,
            ),
            VideoButtonWidget(
              buttonText: "Como pagar pelas entregas",
              videoId: "video2.mp4",
              tamanho: 300,
              status: true,
            ),
          ],
        ),
        VideoButtonWidget(
          buttonText: "Como solicitar uma entrega inversa",
          videoId: "2u6ha3xoVAs",
          tamanho: 340,
          status: false,
        ),
      ],
    );
  }
}
