import 'package:flutter/material.dart';

class RotatingTransition extends StatelessWidget {
  final Widget child;
  final Animation<double> angle;

  RotatingTransition({
    @required this.angle,
    @required this.child
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: angle,
      child: child,
      builder: (context, child) {
        return Transform.rotate(angle: angle.value, child: child);
      }
    );
  }
}