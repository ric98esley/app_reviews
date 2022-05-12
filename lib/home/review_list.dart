import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Review("assets/img/perfil.jpg", "nombre1", "1 review 5 photos",
          "There is an amazing place in Sri Lanka"),
      Review("assets/img/perfil.jpg", "nombre2", "1 review 5 photos",
          "There is an amazing place in Sri Lanka")
    ]);
  }
}
