import 'package:animate_things/main.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings){
    final args = settings.arguments;

    switch(settings.name){
      case '/':
        return MaterialPageRoute(builder: (_) => FirstPage());
      case '/second':
        if(args is String){
          return MaterialPageRoute(builder: (_) => SecondPage(data: args,));
        }

        return _errorRoute();
      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(builder: (_) => Scaffold(
      appBar: AppBar(title: Text('Error'),),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
          Text("Sorry not found", style: TextStyle(fontSize: 30),),
        ],),
      ),
    ));
  }
}