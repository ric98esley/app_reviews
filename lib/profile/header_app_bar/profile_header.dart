import 'package:flutter/material.dart';
import 'package:prueba_2/profile/header_app_bar/menu_bar_bottons.dart';
import 'package:prueba_2/profile/header_app_bar/user_info.dart';

class ProfileHeader extends StatelessWidget {
  String title = "Profile";
  ProfileHeader(this.title);

  @override
  Widget build(BuildContext context) {
    final titleProfile = Text(
      title,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 30.0,
        fontFamily: "Lato",
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.start,
    );

    return Container(
        margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 50.0),
        child: Column(
          children: [
            Row(
              children: [titleProfile],
            ),
            UserInfo("assets/img/perfil.jpg", "Gustavo Pedro"),
            MenuBottonsBar()
          ],
        ));
  }
}
