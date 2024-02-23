import 'package:flutter_modular/flutter_modular.dart';
import 'package:locallog_web_modal/src/modules/modal/modal_page.dart';

class ModalModule extends Module {
  void routes(r) {
    r.child('/modal', child: (context) => ModalPage());
  }
}
