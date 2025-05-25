import 'package:flutter/material.dart';

class HomeViewModel extends ChangeNotifier {
  bool isLoading = true;

  void loadServices() {
    isLoading = false;
    notifyListeners();
  }
}