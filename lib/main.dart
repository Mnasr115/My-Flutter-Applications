import 'package:mahmoud_apps/Basketball%20App/Basketball_points_app.dart';
import 'package:mahmoud_apps/Business%20Card/Business_card.dart';
import 'package:flutter/material.dart';
import 'package:mahmoud_apps/Home_screen.dart';
import 'Toku app/Family_members.dart';
import 'Toku app/Toku_app.dart';
import 'components/category_Items.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
    debugShowCheckedModeBanner: false,
      home: TokuApp(),
    );
  }
}

