import 'package:flutter/material.dart';
import 'package:flutter_app/pages/Home.dart';
import 'package:flutter_app/pages/Loading.dart';
import 'package:flutter_app/pages/Location.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/location',
  routes: {
    '/': (context) => LoadingScreen(),
    '/home': (context) => Home(),
    '/location': (context) => ChooseLocation()
  },
));
