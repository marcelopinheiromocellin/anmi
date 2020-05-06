import 'package:app_anmi/app/utils/themeUtils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EmpresaItem extends StatefulWidget {
  EmpresaItem({Key key}) : super(key: key);

  @override
  _EmpresaItemState createState() => _EmpresaItemState();
}

class _EmpresaItemState extends State<EmpresaItem> {
  final listItem = [
    {
      "name": "Triangulo",
      "pic": "assets/images/triangulo.jpg",
    },
    {
      "name": "Emanuel",
      "pic": "assets/images/emanuel.jpg",
    },
    {
      "name": "Max",
      "pic": "assets/images/max.png",
    },
    
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ThemeUtils.primaryColor,
      child: GridView.builder(
        itemCount: listItem.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Producto(
            producto_name: listItem[index]['name'],
            producto_pic: listItem[index]['pic'],
          );
        },
      ),
    );
  }
}

class Producto extends StatelessWidget {
  final producto_name;
  final producto_pic;

  Producto({
    this.producto_name,
    this.producto_pic,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: producto_name,
        child: Material(
          child: InkWell(
            onTap:() => Get.toNamed('/producto'),
            child: GridTile(
              footer: Container(
                color: Colors.black26,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      producto_name,
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                  ],
                ),
              ),
              child: Image.asset(
                producto_pic,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
