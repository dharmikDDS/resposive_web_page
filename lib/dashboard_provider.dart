import 'package:flutter/material.dart';

class DashboardProvider extends ChangeNotifier {
  String _selectedSliderOption = 'Dashboard';

  String get selectedSliderOption => _selectedSliderOption;

  void changeSliderOption(String newvalue) {
    _selectedSliderOption = newvalue;
    notifyListeners();
  }
}
