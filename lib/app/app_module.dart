import 'package:app_anmi/app/modules/advertising/advertising_module.dart';
import 'package:app_anmi/app/modules/producto/producto_module.dart';
import 'package:app_anmi/app/modules/register/register_module.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'app_controller.dart';
import 'app_widget.dart';
import 'modules/home/home_module.dart';
import 'modules/login/login_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, module: HomeModule()),
        Router('/advertising', module: AdvertisingModule()),
        Router('/login', module: LoginModule()),
        Router('/register', module: RegisterModule()),
        Router('/producto', module: ProductoModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
