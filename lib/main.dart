import 'package:flutter/material.dart';
import 'package:netflix_ui/menu.dart';
import 'package:netflix_ui/play.dart';
import 'package:netflix_ui/widget/navbar.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, screenType) {
      return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
     
        primarySwatch: Colors.blue,
      ),
      home: const NetflixMenu(),
    );
    },);
  }
}


