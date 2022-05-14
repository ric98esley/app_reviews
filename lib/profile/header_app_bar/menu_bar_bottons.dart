import 'package:flutter/material.dart';
import 'menu_button.dart';

class MenuBottonsBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 10.0),
        child: Row(
          children: [
            MenuButton(Color.fromRGBO(255, 255, 255, 0.6), Icons.turned_in_not,
                20.0, true),
            MenuButton(Color.fromRGBO(255, 255, 255, 0.6), Icons.card_travel,
                20.0, true),
            MenuButton(
                Color.fromRGBO(255, 255, 255, 1), Icons.add, 40.0, false),
            MenuButton(Color.fromRGBO(255, 255, 255, 0.6), Icons.mail_outline,
                20.0, true),
            MenuButton(
                Color.fromRGBO(255, 255, 255, 0.6), Icons.person, 20.0, true),
          ],
        ));
  }
}
