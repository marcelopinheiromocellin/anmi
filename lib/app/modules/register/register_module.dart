import 'package:app_anmi/app/modules/login/login_page.dart';
import 'package:app_anmi/app/modules/register/register_controller.dart';
import 'package:app_anmi/app/modules/register/register_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class RegisterModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => RegisterController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => RegisterPage()),
        Router('/login', child: (_, args) => LoginPage()),
      ];

  static Inject get to => Inject<RegisterModule>.of();
}
