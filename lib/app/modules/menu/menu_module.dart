import 'package:app_anmi/app/modules/producto/producto_module.dart';
import 'package:app_anmi/app/modules/producto/producto_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'menu_controller.dart';
import 'menu_page.dart';

class MenuModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => MenuController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => MenuPage()),
       Router('/producto', child: (_, args) => ProductoPage()),
      ];

  static Inject get to => Inject<MenuModule>.of();
}
