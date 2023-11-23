import 'package:flutter/material.dart';

import '../main.dart';

class IconButtonWidget extends StatelessWidget {
  final VoidCallback onPressed;
  final double iconSize;
  final IconData iconData;

  const IconButtonWidget(
      {super.key,
      required this.onPressed,
      required this.iconSize,
      required this.iconData});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          onPressed();
        },
        child: Center(
          child: Container(
            width: iconSize+5,
            height: iconSize+5,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Icon(
                iconData,
                size: iconSize,
                color: const Color(0xffbd7eff),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
