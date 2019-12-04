import 'package:animate_things/route_generator.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("First Page"),),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
          Text("First Page", style: TextStyle(fontSize: 30),),
          RaisedButton(child: Text('Go to second page'), onPressed: (){
            Navigator.of(context).pushNamed('/second', arguments: "Hello from the first page");
          },)
        ],),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  final String data;
  SecondPage({ Key key, @required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(title: Text("Second Page"),),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
          Text("Second Page", style: TextStyle(fontSize: 30),),
          Text(data, style: TextStyle(fontSize: 24,)),
        ],),
      ),
    );
  }
}