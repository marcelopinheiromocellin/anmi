import 'package:app_anmi/app/modules/login/login_page.dart';
import 'package:app_anmi/app/modules/register/register_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'advertising_controller.dart';
import 'advertising_page.dart';

class AdvertisingModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AdvertisingController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => AdvertisingPage()),
        Router('/login', child: (_, args) => LoginPage()),
        Router('/register', child: (_, args) => RegisterPage()),
      ];

  static Inject get to => Inject<AdvertisingModule>.of();
}
