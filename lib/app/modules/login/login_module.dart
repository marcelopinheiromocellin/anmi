import 'package:app_anmi/app/modules/menu/menu_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'login_controller.dart';
import 'login_page.dart';

class LoginModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => LoginController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => LoginPage()),
        Router('/menu', child: (_, args) => MenuPage()),

      ];

  static Inject get to => Inject<LoginModule>.of();
}
