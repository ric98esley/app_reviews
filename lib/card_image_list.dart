import 'package:flutter/material.dart';
import 'card_image.dart';

class CardList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350.0,
      child: ListView(
        padding: const EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: [
          CardImage('assets/img/imagen1.jpg.jpg'),
          CardImage('assets/img/imagen2.jpg'),
          CardImage('assets/img/imagen3.jpg'),
          CardImage('assets/img/imagen4.jpg'),
        ],
      ),
    );
  }
}
