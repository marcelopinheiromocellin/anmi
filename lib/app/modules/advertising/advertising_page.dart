import 'dart:async';
import 'package:app_anmi/Animation/FadeAnimation.dart';
import 'package:app_anmi/app/components/controle.button.dart';
import 'package:app_anmi/app/utils/themeUtils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'components/slide_dots.dart';
import 'components/slide_item.dart';
import 'components/slidy.dart';

class AdvertisingPage extends StatefulWidget {
  @override
  _AdvertisingPageState createState() => _AdvertisingPageState();
}

class _AdvertisingPageState extends State<AdvertisingPage> {
  int _currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 5), (Timer timer) {
      if (_currentPage < 2) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.grey[100],
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                Expanded(
                  child: Stack(
                    alignment: AlignmentDirectional.bottomCenter,
                    children: <Widget>[
                      FadeAnimation(
                        1.2,
                        PageView.builder(
                          scrollDirection: Axis.horizontal,
                          controller: _pageController,
                          onPageChanged: _onPageChanged,
                          itemCount: slideList.length,
                          itemBuilder: (ctx, i) => SlideItem(i),
                        ),
                      ),
                      Stack(
                        alignment: AlignmentDirectional.topStart,
                        children: <Widget>[
                          Container(
                            margin: const EdgeInsets.only(bottom: 35),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                for (int i = 0; i < slideList.length; i++)
                                  if (i == _currentPage)
                                    SlideDots(true)
                                  else
                                    SlideDots(false)
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    FadeAnimation(
                      1.5,
                      ControleButton(
                        onPressed: () => Get.toNamed('/register'),
                        label: 'Registrar-se',
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    FadeAnimation(
                      1.8,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Tienes una cuenta?',
                            style: TextStyle(
                              fontSize: 18,
                              color: ThemeUtils.primaryColor,
                            ),
                          ),
                          FlatButton(
                            child: Text(
                              'Entrar',
                              style: TextStyle(
                                fontSize: 28,
                                color: ThemeUtils.primaryColor,
                              ),
                            ),
                            onPressed: () => Get.toNamed('/login'),
                          ),
                        ],
                      ),
                    ),
                    FadeAnimation(
                      2,
                      FlatButton(
                        child: RichText(
                          text: TextSpan(
                            text: 'Entrar con',
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'Baloo Tamma 2',
                              fontWeight: FontWeight.w700,
                              color: ThemeUtils.primaryColor,
                            ),
                            children: [
                              TextSpan(
                                text: ' Facebook',
                                style: TextStyle(
                                  fontSize: 25,
                                  fontFamily: 'Baloo Tamma 2',
                                  color: Colors.blueAccent,
                                  fontWeight: FontWeight.w700,
                                ),
                              )
                            ],
                          ),
                        ),
                        onPressed: null,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// _launchURL() async {
//   const url = 'https://facebook.com';
//   if (await canLaunch(url)) {
//     await launch(
//       url,
//       forceSafariVC: false,
//       forceWebView: false,
//       headers: <String, String>{'header_key': 'header_value'},
//     );
//   } else {
//     throw 'Could not launch $url';
//   }
// }
