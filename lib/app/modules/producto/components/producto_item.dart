import 'package:app_anmi/app/utils/themeUtils.dart';
import 'package:flutter/material.dart';

class ProductoItem extends StatefulWidget {
  ProductoItem({Key key}) : super(key: key);

  @override
  _ProductoItemState createState() => _ProductoItemState();
}

class _ProductoItemState extends State<ProductoItem> {
  final listItem = [
    {
      "name": "Banana",
      "pic": "assets/images/banana.jpg",
      "price": 1000,
      "old_price": 90
    },
    {
      "name": "Coca Cola",
      "pic": "assets/images/coca.jpg",
      "price": 5000,
      "old_price": 90
    },
    {
      "name": "Sandia",
      "pic": "assets/images/melancia.jpg",
      "price": 30000,
      "old_price": 90
    },
    {
      "name": "Guarana",
      "pic": "assets/images/guarana.jpg",
      "price": 5000,
      "old_price": 90
    },
    {
      "name": "Goiaba",
      "pic": "assets/images/goiaba.jpg",
      "price": 2000,
      "old_price": 90
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
            producto_price: listItem[index]['price'],
            producto_old: listItem[index]['old_price'],
          );
        },
      ),
    );
  }
}

class Producto extends StatelessWidget {
  final producto_name;
  final producto_pic;
  final producto_price;
  final producto_old;

  Producto(
      {this.producto_name,
      this.producto_old,
      this.producto_pic,
      this.producto_price});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: producto_name,
        child: Material(
          child: InkWell(
            onTap: () {},
            child: GridTile(
              footer: Container(
                color: Colors.black26,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      producto_name,
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    Text(
                      '\GS.$producto_price',
                      style: TextStyle(fontSize: 30, color: Colors.white),
                      
                    ),
                  ],
                ),
              ),
              child: Image.asset(
                producto_pic,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
