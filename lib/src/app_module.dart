import 'package:flutter_modular/flutter_modular.dart';
import 'package:locallog_web_modal/src/modules/home/home_page.dart';
import 'package:locallog_web_modal/src/modules/modal/modal_page.dart';

class AppModule extends Module {
  @override
  void routes(r) {
    r.child(Modular.initialRoute, child: (context) => HomePage());
    r.child('/modal', child: (context) => ModalPage());
  }
}
