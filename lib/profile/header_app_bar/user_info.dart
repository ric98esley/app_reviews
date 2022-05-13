import 'package:flutter/material.dart';

class UserInfo extends StatelessWidget {
  String pathImage = "assets/img/perfil.jpg";
  String name = "Name";
  String email = "example@example.com";

  UserInfo(this.pathImage, this.name);

  @override
  Widget build(BuildContext context) {
    final photoUser = Container(
      width: 90.0,
      height: 90.0,
      margin: EdgeInsets.only(right: 10.0),
      decoration: BoxDecoration(
          border: Border.all(
              color: Colors.white, width: 2.0, style: BorderStyle.solid),
          shape: BoxShape.circle,
          image:
              DecorationImage(fit: BoxFit.cover, image: AssetImage(pathImage))),
    );
    final userName = Text(
      name,
      style: const TextStyle(
          fontFamily: "Lato",
          fontSize: 24.0,
          fontWeight: FontWeight.w800,
          color: Colors.white),
    );
    final userMail = Text(email,
        style: const TextStyle(
            fontFamily: "Lato",
            fontSize: 16.0,
            fontWeight: FontWeight.w300,
            color: Colors.white60));
    final UserInfo =
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(margin: const EdgeInsets.only(bottom: 5.0), child: userName),
      userMail
    ]);
    return Container(
        margin: EdgeInsets.only(top: 20.0),
        child: Row(
          children: [photoUser, UserInfo],
        ));
  }
}
