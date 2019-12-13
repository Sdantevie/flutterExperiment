import 'package:flutter/material.dart';

var pageList = [
  OnboardingScreen(title: "Read Comics", body: "Exciting Comics", colorGradient: gradient[0]),
  OnboardingScreen(title: "Share Comics", body: "Exciting Stuff", colorGradient: gradient[1])
];

var gradient = [
  [Colors.amber, Colors.red],
  [Colors.deepOrange, Colors.orangeAccent]
];

class OnboardingScreen{
  final String title;
  final String body;
  final String assetUrl;
  final List<Color> colorGradient;

  OnboardingScreen({this.title, this.body, this.assetUrl, this.colorGradient});
}