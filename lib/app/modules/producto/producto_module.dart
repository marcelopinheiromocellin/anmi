import 'package:app_anmi/app/modules/producto/producto_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:app_anmi/app/modules/producto/producto_page.dart';

class ProductoModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => ProductoController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => ProductoPage()),
      ];

  static Inject get to => Inject<ProductoModule>.of();
}
