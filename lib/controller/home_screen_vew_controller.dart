import 'package:coined_one/adaptor/01_dashboard_api/dashboard_api.dart';
import 'package:coined_one/core/model/01_model/dashboard_model.dart';
import 'package:get/get.dart';

class HomeScreenViewController extends GetxController {
  String userName = 'UserName';

  List<double> circularIndicatorColorList = [0, 0, 0, 2];
  DashboardModel? dashboardModel;
  double linearProgressFreeTimePercent = 0;
  Future getDashboardData() async {
    dashboardModel = await getDashboardApiRequest();
    if (dashboardModel != null) {
      circularIndicatorColorList[0] =
          dashboardModel!.data!.screenTime!.screenTimeClass! /
              dashboardModel!.data!.screenTime!.total!;

      circularIndicatorColorList[1] = dashboardModel!.data!.screenTime!.study! /
          dashboardModel!.data!.screenTime!.total!;

      circularIndicatorColorList[2] = dashboardModel!.data!.screenTime!.free! /
          dashboardModel!.data!.screenTime!.total!;
    }
    for (int i = 0; i < 3; i++) {
      if (circularIndicatorColorList[i] > 1) {
        circularIndicatorColorList[1];
      }
    }
    linearProgressFreeTimePercent = dashboardModel!.data!.freeTime!.usage! /
        dashboardModel!.data!.freeTime!.limit!;
    update();
  }
}
