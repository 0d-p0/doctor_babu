import 'package:doctor_babu/Screens/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor:MyColors.primary, // You can set any color you want here
    ));
    return const MaterialApp(
      debugShowCheckedModeBanner: true,
      home:HomeScreen(),

      // Scaffold(
      //     backgroundColor: const Color(
      //         0xFF9EB0E9), // Make the scaffold background transparent
      //     body: SafeArea(
      //       child: Container(
      //         height: double.infinity,
      //         width: double.infinity,
      //         decoration: const BoxDecoration(
      //             image: DecorationImage(
      //                 image: AssetImage("assets/images/women-doctor-smile.jpg"),
      //                 fit: BoxFit.cover)),
      //         child: const GlassMorphism(
      //             start: 0.5, end: 0.5, radius: 0, child: HomeScreen()),
      //       ),
      //     )),
    );
  }
}


