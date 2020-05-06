import 'package:app_anmi/app/modules/advertising/advertising_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'home_controller.dart';
import 'home_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => HomeController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => HomePage()),
        Router('/advertising', module: AdvertisingModule()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
