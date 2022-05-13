import 'package:flutter/material.dart';
import 'package:prueba_2/profile/header_app_bar/profile_background.dart';
import 'package:prueba_2/profile/header_app_bar/profile_header.dart';

class ProfileTrips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [ProfileBackground("Profile"), ProfileHeader("Profile")],
    );
  }
}
