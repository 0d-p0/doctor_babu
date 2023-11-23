import 'package:flutter/material.dart';

import '../GlassMorphism.dart';

class MainContainer extends StatelessWidget {
  final Widget child;

  const MainContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
       // Make the scaffold background transparent
        body: SafeArea(
          child: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/women-doctor-smile.jpg"),
                    fit: BoxFit.cover)),
            child: GlassMorphism(start: 0.5, end: 0.5, radius: 0, child: child),
          ),
        ));
  }
}
