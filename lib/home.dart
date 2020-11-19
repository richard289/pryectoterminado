import 'package:flutter/material.dart';
import 'package:proyecto/Gradient_back.dart';
import 'package:proyecto/card_image.dart';
import 'package:proyecto/home_app_bar.dart';
import 'package:proyecto/review.dart';
import 'package:proyecto/review_list.dart';

import 'description_place.dart';

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final descriptionPlaces = Container(
      margin: EdgeInsets.only(
          top: 300,
          left: 30,
          right: 30
      ),
      child: DescriptionPlace("Uyuni", 4, "Lorem Ipsum es simplemente texto de relleno de la industria de la impresión y la composición tipográfica. Lorem Ipsum ha sido el texto de relleno estándar de la industria desde la década de 1500, cuando un impresor desconocido tomó una galera de tipos y la mezcló para hacer un libro de muestras tipográfico. Ha sobrevivido no solo a cinco siglos, sino también al salto a la composición tipográfica electrónica,"),
    );

    final reviewList = Container(
      margin: EdgeInsets.only(
          top: 20,
          left: 30,
          right: 30
      ),
      child: ReviewList()

    );
    final listView = ListView(
      children: <Widget>[
        descriptionPlaces,
        reviewList
      ],
    );

    return Scaffold(
      body: Stack(
        children: <Widget>[
            listView,
            HomeAppBar("Popular")
          ],
        ),
      );

  }

}