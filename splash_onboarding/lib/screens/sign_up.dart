import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUp extends StatefulWidget {
  SignUp({Key key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil.getInstance()..init(context);
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
          resizeToAvoidBottomPadding: true,
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 50.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Image.asset(
                    "assets/images/vortex247.png",
                    width: ScreenUtil.getInstance().setWidth(100),
                    height: ScreenUtil.getInstance().setHeight(100),
                  ),
                  SizedBox(
                    height: ScreenUtil.getInstance().setHeight(120),
                  ),
                  Text("Register",
                      style: TextStyle(
                          fontSize: 30.0,
                          color: Colors.white,
                          fontFamily: 'OpenSans')),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(top: 10.0),
                    height: ScreenUtil.getInstance().setHeight(1100),
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.4),
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(8.0)),
                    child: Padding(
                      padding:
                          EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            height: ScreenUtil.getInstance().setHeight(10),
                          ),
                          Text(
                            "Username",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'OpenSans',
                                fontSize: ScreenUtil.getInstance().setSp(40)),
                          ),
                          TextField(
                              cursorColor: Colors.white,
                              style: TextStyle(
                                  color: Colors.white, fontFamily: 'OpenSans'),
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Color(0xFF2A2E3D),
                                contentPadding: EdgeInsets.all(8.0),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color(0xFFD71786), width: 1.0)),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color(0xFFFF691F), width: 1.0)),
                              )),
                          SizedBox(
                            height: ScreenUtil.getInstance().setHeight(35),
                          ),
                          Text(
                            "Email",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'OpenSans',
                                fontSize: ScreenUtil.getInstance().setSp(40)),
                          ),
                          TextField(
                              cursorColor: Colors.white,
                              style: TextStyle(
                                  color: Colors.white, fontFamily: 'OpenSans'),
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Color(0xFF2A2E3D),
                                contentPadding: EdgeInsets.all(8.0),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color(0xFFD71786), width: 1.0)),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color(0xFFFF691F), width: 1.0)),
                              )),
                          SizedBox(
                            height: ScreenUtil.getInstance().setHeight(35),
                          ),
                          Text(
                            "Password",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'OpenSans',
                                fontSize: ScreenUtil.getInstance().setSp(40)),
                          ),
                          TextField(
                              cursorColor: Colors.white,
                              keyboardType: TextInputType.visiblePassword,
                              style: TextStyle(
                                  color: Colors.white, fontFamily: 'OpenSans'),
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Color(0xFF2A2E3D),
                                contentPadding: EdgeInsets.all(8.0),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color(0xFFD71786), width: 1.0)),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color(0xFFFF691F), width: 1.0)),
                              )),
                          SizedBox(
                            height: ScreenUtil.getInstance().setHeight(35),
                          ),
                          Text(
                            "Confirm Password",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'OpenSans',
                                fontSize: ScreenUtil.getInstance().setSp(40)),
                          ),
                          TextField(
                              cursorColor: Colors.white,
                              keyboardType: TextInputType.visiblePassword,
                              style: TextStyle(
                                  color: Colors.white, fontFamily: 'OpenSans'),
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Color(0xFF2A2E3D),
                                contentPadding: EdgeInsets.all(8.0),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color(0xFFD71786), width: 1.0)),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color(0xFFFF691F), width: 1.0)),
                              )),
                          SizedBox(
                            height: ScreenUtil.getInstance().setHeight(60),
                          ),
                          FlatButton(
                            color: Color(0xFFFF691F),
                            splashColor: Color(0xFFD71786),
                            onPressed: () {},
                            child: Text(
                              "Register",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.0,
                                  fontFamily: 'OpenSans'),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
