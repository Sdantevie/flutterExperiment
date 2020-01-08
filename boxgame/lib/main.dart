import 'package:flame/util.dart';
import 'package:flutter/material.dart';
import 'package:boxgame/box_game.dart';
import 'package:flutter/services.dart';
import 'package:flutter/gestures.dart';

//void main() => runApp(App());

// void main()  {
//   BoxGame game = BoxGame();
  
//   runApp(game.widget);
  
//   Util flameUtil = Util();
//   flameUtil.fullScreen();
//   flameUtil.setOrientation(DeviceOrientation.portraitUp);
//   TapGestureRecognizer tapper = TapGestureRecognizer();
//   tapper.onTapDown = game.onTapDown;
//   flameUtil.addGestureRecognizer(tapper); 
// }

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Check Stuff', 
      home: Container(
        child: RaisedButton(
          child: Text('Press Me'), 
          onPressed: (){
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) {
                  BoxGame boxGame = BoxGame();
                  return boxGame.widget;
                }
              )
            );
          },
        ),
      ),
    );
  }
}
