import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:math_puzzle_1/scenes/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Toán Vui',
      home: HomeScene(),
      theme: new ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: 'StarJedi'),
      // navigatorObservers: <NavigatorObserver>[observer],
    );
  }
}