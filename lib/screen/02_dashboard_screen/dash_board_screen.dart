import 'package:coined_one/constants/methods/spacer.dart';
import 'package:coined_one/constants/widget/loading_widget/custom_shimmers.dart';
import 'package:coined_one/controller/bottom_navbar_view_controller.dart';
import 'package:coined_one/controller/home_screen_vew_controller.dart';
import 'package:coined_one/screen/02_dashboard_screen/components/01_dashboard/circular_slider_and_time_widget.dart';
import 'package:coined_one/screen/02_dashboard_screen/components/02_free_time_usage/free_time_usage_widget.dart';
import 'package:coined_one/screen/02_dashboard_screen/components/03_devices/by_devices_widget.dart';
import 'package:coined_one/screen/99_dummy_screen/dummy_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  final scrollToHideWidgetViewController =
      Get.put(ScrollToHideWidgetViewController());
  final homeScreenViewController = Get.put(HomeScreenViewController());
  @override
  void initState() {
    homeScreenViewController.getDashboardData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: scrollToHideWidgetViewController.controller,
      slivers: [
        SliverAppBar(
            floating: true,
            title: Text(homeScreenViewController.userName.toString()),
            actions: [
              IconButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DummyScreen(),
                  ),
                ),
                icon: const Icon(Icons.settings),
              )
            ]),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) => Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
//dashboard heading
                  GetBuilder<HomeScreenViewController>(
                    builder: (_) => homeScreenViewController.dashboardModel ==
                            null
                        ? customShimmer(context)
                        : CircularAndTimeSpendWidget(homeScreenViewController),
                  ),

                  verticalSpace(20),

                  const Divider(color: Colors.black38),

                  verticalSpace(20),

                  GetBuilder<HomeScreenViewController>(
                    builder: (_) =>
                        homeScreenViewController.dashboardModel == null
                            ? customShimmer(context)
                            : FreeTimeUsageWidget(homeScreenViewController),
                  ),

                  verticalSpace(10),

                  const Divider(color: Colors.black38),

                  verticalSpace(10),

                  GetBuilder<HomeScreenViewController>(
                    builder: (_) =>
                        homeScreenViewController.dashboardModel == null
                            ? customShimmer(context)
                            : ByDevicesWidget(homeScreenViewController),
                  )
                ],
              ),
            ),
            childCount: 1,
          ),
        ),
      ],
    );
  }
}
