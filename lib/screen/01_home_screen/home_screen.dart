import 'package:coined_one/constants/values/bottom_nav_bar_items.dart';
import 'package:coined_one/controller/bottom_navbar_view_controller.dart';
import 'package:coined_one/controller/home_screen_vew_controller.dart';
import 'package:coined_one/screen/01_home_screen/components/scroll_to_hide_bottom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final homeScreenViewController = Get.put(HomeScreenViewController());
  final scrollToHideWidgetViewController =
      Get.put(ScrollToHideWidgetViewController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ScrollToHideWidgetViewController>(
      builder: (_) {
        return Scaffold(
          body: bottomNavigationBarItems[
              scrollToHideWidgetViewController.bottomNavigationIndex],
          bottomNavigationBar: ScrollToHideWidget(
            child: BottomNavigationBar(
                currentIndex:
                    scrollToHideWidgetViewController.bottomNavigationIndex,
                onTap: (bottomNavigationbarIndex) {
                  scrollToHideWidgetViewController
                      .setBottomNavigationBarIndex(bottomNavigationbarIndex);
                },
                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.analytics_outlined),
                    label: 'Dashboard',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.message),
                    label: 'Chat',
                  ),
                ]),
          ),
        );
      },
    );
  }
}
