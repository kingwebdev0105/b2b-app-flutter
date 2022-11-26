// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:interlinc_b2b/core/utilities/constants.dart' as Constants;
import 'package:interlinc_b2b/router/router.dart';
import 'package:interlinc_b2b/screens/home_screen.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = '/login';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(40.0, 110.0, 40.0, 0.0),
                  child: Text(
                    'Sign In',
                    style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.normal),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(40.0, 160.0, 40.0, 0.0),
                  child: Text(
                    'Hi there! Nice to see you again.',
                    style: TextStyle(color: Colors.grey),
                  ),
                )
              ],
            ),
          ),
          Container(
              padding: EdgeInsets.only(top: 35.0, left: 40.0, right: 40.0),
              child: Column(
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'EMAIL',
                        labelStyle: TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.bold, color: Colors.red),
                        focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey))),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: TextField(
                      decoration: InputDecoration(
                          labelText: 'PASSWORD ',
                          labelStyle:
                              TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.bold, color: Colors.red),
                          focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey))),
                      obscureText: true,
                    ),
                  ),
                  SizedBox(height: 50.0),
                  GestureDetector(
                    onTap: () => AppRouter.sailor.navigate(HomeScreen.routeName),
                    child: Container(
                      height: 40.0,
                      child: Material(
                          borderRadius: BorderRadius.circular(5.0),
                          shadowColor: Colors.blueAccent,
                          color: Constants.DEFAULT_BLUE,
                          elevation: 7.0,
                          child: Center(
                            child: Text(
                              'SIGN IN',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )),
                    ),
                  )
                ],
              )),
          Container(
            child: Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(100.0, 30.0, 40.0, 0.0),
                  child: Text(
                    'Can\'t remember your password?',
                    style: TextStyle(color: Colors.grey),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(120.0, 80.0, 40.0, 0.0),
                  child: Text(
                    'Forgot password?',
                    style: TextStyle(color: Colors.grey, fontSize: 20.0),
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
