// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:locallog_web_modal/src/theme/app_theme.dart';
import 'package:video_player/video_player.dart';

class VideoButtonWidget extends StatelessWidget {
  final String buttonText;
  final String videoId;
  final double tamanho;
  final bool status;

  VideoButtonWidget({
    Key? key,
    required this.buttonText,
    required this.videoId,
    required this.tamanho,
    required this.status,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: status == true
          ? () => _showModalPlayer(context, videoId, buttonText)
          : null,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          height: 40,
          width: tamanho,
          decoration: BoxDecoration(
            color: Color(0XFFF9F9F9),
            border: Border.all(
              color: Color(0XFF777777),
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(40.0),
          ),
          child: Padding(
            padding:
                const EdgeInsets.only(right: 16, left: 16, top: 8, bottom: 8),
            child: Row(
              children: [
                Wrap(
                  alignment: WrapAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: status == true
                          ? Image.asset(
                              'assets/images/play.png',
                              width: 22,
                              height: 22,
                            )
                          : Image.asset(
                              'assets/images/greyplay.png',
                              width: 22,
                              height: 22,
                            ),
                    ),
                    Flexible(
                      child: Text(
                        "Video: ${buttonText}",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: status == true
                            ? AppTheme.textStyles.modalVideoButtonText
                            : AppTheme.textStyles.modalVideoButtonText2,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void _showModalPlayer(BuildContext context, String videoId, String buttonText) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      VideoPlayerController _videoPlayerController =
          VideoPlayerController.asset('assets/videos/$videoId');
      ChewieController _chewieController = ChewieController(
        videoPlayerController: _videoPlayerController,
        aspectRatio: 16 / 9,
        autoPlay: true,
        looping: false,
      );
      return AlertDialog(
        backgroundColor: Colors.white,
        content: Container(
          width: MediaQuery.of(context).size.width * 0.47,
          height: MediaQuery.of(context).size.height * 0.80,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Icon(
                      Icons.close,
                    ),
                  ),
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 8.0, bottom: 8.0, left: 16.0),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/play.png',
                      width: 25,
                      height: 25,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Text(
                      buttonText,
                      style: AppTheme.textStyles.logoTitle,
                    ),
                  ],
                ),
              ),
              Row(children: [
                Container(
                  width: 640,
                  height: 400,
                  child: Chewie(controller: _chewieController),
                ),
              ])
            ],
          ),
        ),
      );
    },
  );
}
