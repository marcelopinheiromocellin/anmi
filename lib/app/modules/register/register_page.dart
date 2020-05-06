import 'package:app_anmi/Animation/FadeAnimation.dart';
import 'package:app_anmi/app/components/controle.button.dart';
import 'package:app_anmi/app/components/controle_text_form_field.dart';
import 'package:app_anmi/app/utils/size_utils.dart';
import 'package:app_anmi/app/utils/themeUtils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:get/get.dart';
import 'register_controller.dart';

class RegisterPage extends StatefulWidget {
  final String title;
  const RegisterPage({Key key, this.title = "Register"}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState
    extends ModularState<RegisterPage, RegisterController> {
  //use 'controller' variable to access controller

  AppBar appBar = AppBar(
    elevation: 0,
    centerTitle: true,
    title: Text(
      'Registra-se',
      style: TextStyle(
        color: Colors.white,
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appBar,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              _makeHeader(),
              SizedBox(
                height: 30,
              ),
              _makeForm()
            ],
          ),
        ),
      ),
    );
  }

  Widget _makeHeader() {
    return Container(
      color: ThemeUtils.primaryColor,
      width: SizeUtils.widthScreen,
      height: (SizeUtils.heightScreen * .45) -
          (appBar.preferredSize.height + SizeUtils.statusBarheight),
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            width: SizeUtils.widthScreen,
            height: SizeUtils.heightScreen * .39,
            child: FadeAnimation(
              1.8,
              Image.asset(
                'assets/images/producto3.jpg',
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Form _makeForm() {
    return Form(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: <Widget>[
            FadeAnimation(
              1.3,
              ControleTextFormField(
                icon: Icon(Icons.account_circle),
                label: 'Login',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            FadeAnimation(
              1.4,
              ControleTextFormField(
                obscureText: true,
                icon: Icon(Icons.lock),
                label: 'Contraseña',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            FadeAnimation(
              1.5,
              ControleTextFormField(
                obscureText: true,
                icon: Icon(Icons.lock),
                label: 'Confirmar Contraseña',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            FadeAnimation(
              1.8,
              ControleButton(
                onPressed: () => Get.toNamed('/login'),
                label: 'salvar',
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
