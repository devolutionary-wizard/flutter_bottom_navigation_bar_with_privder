import 'package:flutter/material.dart';

class BottomNavigationBarProvider extends ChangeNotifier{
  int indexOfScreen = 0;
  int get currentScreen => indexOfScreen;
  void updateScreenIndex(int index){
    indexOfScreen = index;
    notifyListeners();
  }
}