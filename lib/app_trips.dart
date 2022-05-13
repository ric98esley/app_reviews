import 'package:flutter/material.dart';
import 'home_trips.dart';
import 'search_trip.dart';
import 'profile_trips.dart';

class AppTrips extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AppTrips();
  }
}

class _AppTrips extends State<AppTrips> {
  int indexTap = 0;
  final List<Widget> widgetsChildren = [
    HomeTrips(),
    SearchTrip(),
    ProfileTrips(),
  ];
  void onTapTapped(int index) {
    setState(() {
      indexTap = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetsChildren[indexTap],
      bottomNavigationBar: Theme(
          data: Theme.of(context)
              .copyWith(canvasColor: Colors.white, primaryColor: Colors.purple),
          child: BottomNavigationBar(
              showSelectedLabels: false,
              showUnselectedLabels: false,
              onTap: onTapTapped,
              currentIndex: indexTap,
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.search), label: "Search"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person), label: "Porfile"),
              ])),
    );
  }
}
