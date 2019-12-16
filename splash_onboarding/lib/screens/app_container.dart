import 'package:flutter/material.dart';

class AppContainer extends StatefulWidget {
  AppContainer({Key key}) : super(key: key);

  @override
  _AppContainerState createState() => _AppContainerState();
}

class _AppContainerState extends State<AppContainer> {
  @override
  Widget build(BuildContext context) {
    var _bottomNavigationData = [
      BottomNavigationData(title: 'Home', icon: Icons.home),
      BottomNavigationData(title: 'Explore', icon: Icons.explore),
      BottomNavigationData(title: 'Favourites', icon: Icons.favorite),
      BottomNavigationData(title: 'Original Characters', icon: Icons.people),
    ];
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [Color(0xFF040313), Color(0xFF2A2E3D)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            tileMode: TileMode.clamp,
            stops: [0.0, 1.0]),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color(0xFF2A2E3D),
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Color(0xFFFF691F),
                ),
                title: Text(
                  "Home",
                  style: TextStyle(color: Color(0xFFFF691F)),
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.explore,
                  color: Color(0xFFFF691F),
                ),
                title: Text(
                  "Explore",
                  style: TextStyle(color: Color(0xFFFF691F)),
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite,
                  color: Color(0xFFFF691F),
                ),
                title: Text(
                  "Favourite",
                  style: TextStyle(color: Color(0xFFFF691F)),
                )),
          ],
        ),
      ),
    );
  }
}

class BottomNavigationData {
  final IconData icon;
  final String title;

  BottomNavigationData({this.icon, this.title});
}
