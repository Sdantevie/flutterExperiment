import 'package:flutter/material.dart';
import 'package:splash_onboarding/onboarding/onboarding.dart';
import 'package:splash_onboarding/screens/app_container.dart';
import 'package:splash_onboarding/screens/sign_in.dart';
import 'package:splash_onboarding/screens/sign_up.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => AppContainer());

      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: Text('Error'),
              ),
              body: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "Sorry not found",
                      style: TextStyle(fontSize: 30),
                    ),
                  ],
                ),
              ),
            ));
  }
}
