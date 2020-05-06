import 'package:app_anmi/Animation/FadeAnimation.dart';
import 'package:app_anmi/app/utils/size_utils.dart';
import 'package:app_anmi/app/utils/themeUtils.dart';
import 'package:flutter/material.dart';

import 'components/producto_item.dart';

class ProductoPage extends StatefulWidget {
  @override
  _ProductoPageState createState() => _ProductoPageState();
}

class _ProductoPageState extends State<ProductoPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  ScrollController _scrollViewController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 5);
    _scrollViewController = ScrollController(initialScrollOffset: 0.0);
  }

  @override
  void dispose() {
    _tabController.dispose();
    _scrollViewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ThemeUtils.init(context);
    SizeUtils.init(context);
    return SafeArea(
      child: Scaffold(
        body: NestedScrollView(
          controller: _scrollViewController,
          headerSliverBuilder: (BuildContext context, bool boxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                pinned: true,
                floating: false,
                forceElevated: boxIsScrolled,
                expandedHeight: SizeUtils.heightScreen * .4,
                flexibleSpace: FlexibleSpaceBar(
                  background: FadeAnimation(
                    2,
                    Image.asset(
                      'assets/images/triangulo.jpg',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                actions: <Widget>[
                  ButtonBar(
                    children: <Widget>[
                      IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {})
                    ],
                  )
                ],
                bottom: TabBar(
                  isScrollable: true,
                  indicatorWeight: 5,
                  unselectedLabelColor: Colors.white,
                  indicatorColor: Colors.yellow,
                  labelColor: Colors.yellow,
                  indicatorSize: TabBarIndicatorSize.label,
                  tabs: <Widget>[
                    FadeAnimation(
                      1.3,
                      tabView('Tudo'),
                    ),
                    FadeAnimation(
                      1.4,
                      tabView('Panificados'),
                    ),
                    FadeAnimation(
                      1.5,
                      tabView('Carne'),
                    ),
                    FadeAnimation(
                      1.6,
                      tabView('Bebidas'),
                    ),
                    FadeAnimation(
                      1.7,
                      tabView('Frutas y Verduras'),
                    ),
                  ],
                  controller: _tabController,
                ),
              )
            ];
          },
          body: TabBarView(
            children: <Widget>[
              FadeAnimation(1, PageOne()),
              FadeAnimation(1, PageTwo()),
              FadeAnimation(1, PageThree()),
              FadeAnimation(1, PageFor()),
              FadeAnimation(1, PageFive()),
            ],
            controller: _tabController,
          ),
        ),
      ),
    );
  }

  Tab tabView(String texto) {
    return Tab(
      child: Text(
        texto,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w700,
          shadows: [
            Shadow(color: Colors.black, blurRadius: 15, offset: Offset(5, 5))
          ],
        ),
      ),
    );
  }
}

class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ProductoItem();
  }
}

class PageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ProductoItem();
  }
}

class PageThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ProductoItem();
  }
}

class PageFor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ProductoItem();
  }
}

class PageFive extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ProductoItem();
  }
}
