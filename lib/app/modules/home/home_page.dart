import 'package:app_anmi/Animation/FadeAnimation.dart';
import 'package:app_anmi/app/utils/size_utils.dart';
import 'package:app_anmi/app/utils/themeUtils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:get/get.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    ThemeUtils.init(context);
    SizeUtils.init(context);
    Future.delayed(Duration(seconds: 4), () => Get.offAllNamed('/advertising'));
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            FadeAnimation(
              2,
              Container(
                width: SizeUtils.widthScreen,
                height: SizeUtils.heightScreen,
                color: ThemeUtils.primaryColor,
              ),
            ),
            FadeAnimation(
              1.3,
              Center(
                child: Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('assets/images/producto3.jpg'),
                        fit: BoxFit.fill,
                      ),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 60,
                            color: Colors.black,
                            spreadRadius: 12)
                      ]),
                ),
              ),
            ),
            FadeAnimation(
              1.4,
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 150,
                  top: 450,
                  right: 20,
                  left: 20,
                ),
                child: Center(
                  child: RichText(
                    text: TextSpan(
                      text: 'Anmi',
                      style: TextStyle(
                        fontSize: 50,
                        color: Colors.white,
                        fontFamily: 'Baloo Tamma 2',
                        fontWeight: FontWeight.bold,
                      ),
                      // children: [
                      //   TextSpan(
                      //     text: '',
                      //     style: TextStyle(fontSize: 50, color: Colors.red),
                      //   )
                      // ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
