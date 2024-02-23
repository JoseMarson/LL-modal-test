import 'package:flutter_modular/flutter_modular.dart';
import 'package:locallog_web_modal/src/modules/home/home_page.dart';

class HomeModule extends Module {
  @override
  void routes(r) {
    r.child('/', child: (context) => HomePage());
  }
}
