import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScrollToHideWidgetViewController extends GetxController {
  bool bottomNavigationBarisVisible = true;
  int bottomNavigationIndex = 0;

  ScrollController controller = ScrollController();

  void setBottomNavigationBarIndex(int index) {
    bottomNavigationIndex = index;
    update();
  }

  void showBottomNavigationBar() {
    bottomNavigationBarisVisible = true;
    update();
  }

  void hideBottomNavigationBar() {
    bottomNavigationBarisVisible = false;
    update();
  }
}
