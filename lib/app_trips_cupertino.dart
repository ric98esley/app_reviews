import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'home_trips.dart';
import 'search_trip.dart';
import 'porfile_trips.dart';

class AppTripsCupertino extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CupertinoTabScaffold(
          backgroundColor: Colors.white.withAlpha(70),
          tabBar: CupertinoTabBar(
              backgroundColor: Colors.white.withAlpha(70),
              activeColor: Colors.indigo,
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.search), label: "Search"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person), label: "Porfile"),
              ]),
          tabBuilder: (BuildContext context, int index) {
            switch (index) {
              case 0:
                return CupertinoTabView(
                  builder: (BuildContext context) => HomeTrips(),
                );
              case 1:
                return CupertinoTabView(
                  builder: (BuildContext context) => SearchTrip(),
                );
              case 2:
                return CupertinoTabView(
                  builder: (BuildContext context) => PorfileTrips(),
                );
              default:
                return CupertinoTabView(
                  builder: (BuildContext context) => HomeTrips(),
                );
            }
          }),
    );
  }
}
