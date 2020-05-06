import 'package:flutter/material.dart';

class Slide {
  final String imageUrl;
  final String title;
  final String description;

  Slide({
    @required this.imageUrl,
    @required this.title,
    @required this.description,
  });
}

final slideList = [
  Slide(
    imageUrl: 'assets/images/triangulo.jpg',
    title: 'Quiere su empresa aqui?',
    description: 'Propaganda paga',
  ),
  Slide(
    imageUrl: 'assets/images/paoli.jpg',
    title: 'Quiere su empresa aqui?',
    description: 'Propaganda paga',
  ),
  Slide(
    imageUrl: 'assets/images/franco.png',
    title: 'Quiere su empresa aqui?',
    description: 'Propaganda paga',
  ),
];
