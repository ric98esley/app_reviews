import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FloatingActionButtonGreen();
  }
}

class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen> {
  dynamic iconFav = Icons.favorite;

  void onPressedFav() {
    ScaffoldMessenger.of(context)
        .showSnackBar(const SnackBar(content: Text("Anadiendo a fav")));
    setState(() {
      if (iconFav == Icons.favorite) {
        iconFav = Icons.favorite_border;
      } else {
        iconFav = Icons.favorite;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        backgroundColor: Color(0xFF11DA53),
        mini: true,
        tooltip: "Fav",
        child: Icon(this.iconFav),
        onPressed: onPressedFav);
  }
}
