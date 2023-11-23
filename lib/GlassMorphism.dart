import 'dart:ui';
import 'package:flutter/material.dart';

class GlassMorphism extends StatelessWidget {
  final Widget child;
  final double start;
  final double end;
  final double radius;
  final bool? isFull;
  final Color color;

  const GlassMorphism(
      {Key? key,
      required this.child,
      required this.start,
      required this.end,
      required this.radius,
      this.isFull = false,
      this.color = Colors.black})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                color.withOpacity(start),
                color.withOpacity(end),
              ],
              begin: AlignmentDirectional.topStart,
              end: AlignmentDirectional.bottomEnd,
            ),
            borderRadius: isFull!
                ? BorderRadius.only(
                    topLeft: Radius.circular(radius),
                    topRight: Radius.circular(radius))
                : BorderRadius.all(Radius.circular(radius)),
          ),
          child: child,
        ),
      ),
    );
  }
}
