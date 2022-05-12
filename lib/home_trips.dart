import 'package:flutter/material.dart';
import 'home/review_list.dart';
import 'home/description_place.dart';
import 'home/header_appbar.dart';

class HomeTrips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView(children: [
          DescriptionPlace("Duwili Ella", 3,
              "Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Aenean posuere, tortor sed cursus feugiat, nunc augue blandit nunc, eu sollicitudin urna dolor sagittis lacus. Praesent ut ligula non mi varius sagittis. Suspendisse enim turpis, dictum sed, iaculis a, condimentum nec, nisi. Proin pretium, leo ac pellentesque mollis, felis nunc ultrices eros, sed gravida augue augue mollis justo."),
          ReviewList()
        ]),
        HeaderAppbar()
      ],
    );
  }
}
