import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:prueba_2/app_trips.dart';
import 'package:prueba_2/app_trips_cupertino.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.light));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'App de viajes',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: AppTrips());
  }
}
