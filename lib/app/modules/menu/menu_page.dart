import 'package:app_anmi/Animation/FadeAnimation.dart';
import 'package:app_anmi/app/utils/size_utils.dart';
import 'package:app_anmi/app/utils/themeUtils.dart';
import 'package:flutter/material.dart';
import 'components/producto_item.dart';

class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage>
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
                      'assets/images/producto3.jpg',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
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
                      tabView('Supermercado', Icon(Icons.add_shopping_cart)),
                    ),
                    FadeAnimation(
                      1.4,
                      tabView('Farmacia', Icon(Icons.favorite)),
                    ),
                    FadeAnimation(
                      1.5,
                      tabView('Bodega', Icon(Icons.fastfood)),
                    ),
                    FadeAnimation(
                      1.6,
                      tabView('Restaurante', Icon(Icons.fastfood)),
                    ),
                    FadeAnimation(
                      1.7,
                      tabView('Veterinaria', Icon(Icons.filter_vintage)),
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

  Tab tabView(String texto, Icon icone) {
    return Tab(
      child: Text(
        texto,
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w700,
          shadows: [
            Shadow(color: Colors.black, blurRadius: 15, offset: Offset(5, 5))
          ],
        ),
      ),
      icon: icone,
    );
  }
}

class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return EmpresaItem();
  }
}

class PageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return EmpresaItem();
  }
}

class PageThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return EmpresaItem();
  }
}

class PageFor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return EmpresaItem();
  }
}

class PageFive extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return EmpresaItem();
  }
}
