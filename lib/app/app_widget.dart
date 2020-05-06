import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:get/get.dart';
import 'package:oktoast/oktoast.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Modular.debugMode = true;
    return OKToast(
      position: ToastPosition.bottom,
      child: MaterialApp(
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          DefaultCupertinoLocalizations.delegate
        ],
        debugShowCheckedModeBanner: false,
        supportedLocales: [const Locale('es', 'PY')],
        navigatorKey: Get.key,
        title: 'Anmi',
        theme: ThemeData(
          fontFamily: 'Baloo Tamma 2',
          textTheme: TextTheme(
            body1: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          primaryColor: Color(0XFF657DA1),
          accentColor: Color(0XFF657DA1),
        ),
        initialRoute: '/',
        onGenerateRoute: Modular.generateRoute,
      ),
    );
  }
}
