import 'package:flutter/material.dart';

class HomeViewModel extends ChangeNotifier {
  bool isLoading = true;

  void loadSongs() {
    // Load songs or initialize data
    isLoading = false;
    notifyListeners();
  }
}