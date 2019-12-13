import 'package:clean_architecture/onboarding_screen_data.dart';
import 'package:flutter/material.dart';
import 'package:gradient_text/gradient_text.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home: Onboarding(),
    );
  }
}

class Onboarding extends StatefulWidget {
  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  PageController _pageController;
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: currentPage);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF485563),
            Color(0xFF29323C)
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          tileMode: TileMode.repeated,
          stops: [0.0, 1.0]
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              PageView.builder(
                itemCount: pageList.length,
                controller: _pageController,
                onPageChanged: (index){
                  setState((){
                    currentPage = index;
                  });
                },
                itemBuilder: (context, index){
                  return Stack(
                    fit: StackFit.expand,
                    children: <Widget>[
                      AnimatedBuilder(
                        animation: _pageController,
                        builder: (context, child){
                          var page = pageList[index];
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Container(
                                height: 100.0,
                                margin: EdgeInsets.only(left: 12.0),
                                child: Stack(
                                  children: <Widget>[
                                    Opacity(
                                      opacity: .10,
                                      child: GradientText(
                                        page.title,
                                        gradient: LinearGradient(colors: page.colorGradient),
                                        style: TextStyle(fontSize: 100.0)
                                      )
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 30.0, left: 22.0),
                                      child: GradientText(
                                        page.title,
                                        gradient: LinearGradient(colors: page.colorGradient),
                                        style: TextStyle(fontSize: 100.0)
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          );
                        },
                      )
                    ],
                  );
                }
              )
            ],
          ),
        ),
      ),
    );
  }
}