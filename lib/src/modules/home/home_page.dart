import 'package:flutter/material.dart';
import 'package:locallog_web_modal/src/modules/home/widgets/app_bar_widget.dart';
import 'package:locallog_web_modal/src/modules/modal/modal_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              barrierColor: Colors.black.withOpacity(0.4),
              context: context,
              builder: (BuildContext context) {
                return ModalPage();
              },
            );
          },
          child: Text('Abrir Janela Modal'),
        ),
      ),
    );
  }
}
