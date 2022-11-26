// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:interlinc_b2b/screens/home_screen.dart';
import 'package:interlinc_b2b/screens/login_screen.dart';

class StartUpProvider extends ChangeNotifier {
  Widget handleStartUp() {
    return !_isLoggedIn ? LoginScreen() : HomeScreen();
  }

  bool get _isLoggedIn {
    //TODO: Implement auto login here
    return false;
  }
}
