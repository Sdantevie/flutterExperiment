import 'package:flutter/material.dart';

class TheAnimatee extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Icon(
          Icons.ac_unit,
          color: Colors.green[700],
          size: 100,
        ),
        padding: EdgeInsets.all(30.0),
        alignment: Alignment.center,
    );
  }
}