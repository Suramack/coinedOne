import 'package:coined_one/constants/methods/spacer.dart';
import 'package:coined_one/constants/values/text_style/text_style.dart';
import 'package:coined_one/controller/home_screen_vew_controller.dart';
import 'package:coined_one/screen/02_dashboard_screen/components/03_devices/components/show_devices_widget.dart';
import 'package:flutter/material.dart';

class ByDevicesWidget extends StatefulWidget {
  final HomeScreenViewController homeScreenViewController;
  const ByDevicesWidget(
    this.homeScreenViewController, {
    Key? key,
  }) : super(key: key);

  @override
  State<ByDevicesWidget> createState() => _ByDevicesWidgetState();
}

class _ByDevicesWidgetState extends State<ByDevicesWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'By devices',
          style: boldHeadingTextStyle,
        ),
        SizedBox(
          height: 200,
          child: ListView.separated(
            itemBuilder: (context, index) => ListTile(
              title: Text(
                widget.homeScreenViewController.dashboardModel!.data!
                    .devices![index].name
                    .toString(),
                style: mediumBoldTextStyle,
              ),
              subtitle: Text(
                '${Duration(seconds: widget.homeScreenViewController.dashboardModel!.data!.devices![index].usage!)}'
                        .split('.')[0]
                        .padLeft(8, '0')
                        .toString()
                        .substring(0, 2) +
                    'h ' +
                    '${Duration(seconds: widget.homeScreenViewController.dashboardModel!.data!.devices![index].usage!)}'
                        .split('.')[0]
                        .padLeft(8, '0')
                        .toString()
                        .substring(3, 5) +
                    'm ',
                style: blueMediumBoldTextStyle,
              ),
              leading: widget.homeScreenViewController.dashboardModel!.data!
                      .devices![index].name!
                      .contains('Phone')
                  ? const Icon(
                      Icons.phone_android,
                      size: 30,
                    )
                  : widget.homeScreenViewController.dashboardModel!.data!
                          .devices![index].name!
                          .contains('Laptop')
                      ? const Icon(
                          Icons.laptop_chromebook_rounded,
                          size: 30,
                        )
                      : const Icon(
                          Icons.laptop_chromebook_rounded,
                          size: 30,
                        ),
            ),
            separatorBuilder: (context, index) => verticalSpace(10),
            itemCount: widget.homeScreenViewController.dashboardModel!.data!
                        .devices!.length >
                    2
                ? 2
                : widget.homeScreenViewController.dashboardModel!.data!.devices!
                    .length,
          ),
        ),
        widget.homeScreenViewController.dashboardModel!.data!.devices!.length >
                2
            ? TextButton(
                onPressed: () {
                  showDevicesMethod(context, widget.homeScreenViewController);
                },
                child: const Text('See All Devices'))
            : const SizedBox(),
      ],
    );
  }
}
