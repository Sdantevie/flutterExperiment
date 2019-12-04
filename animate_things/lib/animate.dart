import 'package:animate_things/animated_builder_page.dart';
import 'package:animate_things/animated_widget.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class AnimationPage extends StatefulWidget {
  @override
  _AnimationPageState createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage> with SingleTickerProviderStateMixin {
  AnimationController animationController;
  Animation animation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(duration: Duration(seconds: 5), vsync: this);

    final curvedAnimation = CurvedAnimation(curve: Curves.bounceIn, reverseCurve: Curves.easeInOut, parent: animationController);
    animation = Tween<double>(begin: 0, end: 2 * math.pi).animate(curvedAnimation)
    ..addStatusListener((status) {
      if(status == AnimationStatus.completed){
        animationController.reverse();
      } else if(status == AnimationStatus.dismissed){
        animationController.forward();
      }
    });

    animationController.forward();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(body: RotatingTransition(angle: animation, child: TheAnimatee(),));
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }
}