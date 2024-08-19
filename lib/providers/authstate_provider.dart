import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

class AuthStateProvider extends ChangeNotifier {
  bool _isSignUp = true;

  bool get isSignedUp => _isSignUp;

  void toggleAuthPage() {
    _isSignUp = !_isSignUp;
    print(_isSignUp);
    notifyListeners();
  }
}


class EmailProvider extends ChangeNotifier {
  String _email = "";

  set setEmail(email) {
    _email = email;
    Logger().d(email);
    notifyListeners();
  }

  get getEmail => _email;
}
