import 'package:flutter/material.dart';
import 'package:testing_drawer/model/navigation_item.dart';

class NavigationProvider extends ChangeNotifier {
  /// Set Default Drawer
  NavigationItem _navigationItem = NavigationItem.homeIndex;

  NavigationItem get navigationItem => _navigationItem;

  void setNavigationItem(NavigationItem navigationItem) {
    /// Sesuai yang user pilih
    _navigationItem = navigationItem;
    notifyListeners();
  }
}
