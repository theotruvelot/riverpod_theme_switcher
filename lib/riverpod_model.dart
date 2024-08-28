import 'package:flutter/material.dart';

class RiverpodModel extends ChangeNotifier {
  bool isLight;
  RiverpodModel({this.isLight = true});

  void changeTheme() {
    isLight = !isLight;
    notifyListeners();
  }
}
