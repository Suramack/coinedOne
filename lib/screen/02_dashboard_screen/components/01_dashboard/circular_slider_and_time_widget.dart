import 'package:coined_one/constants/methods/screen_size.dart';
import 'package:coined_one/constants/methods/spacer.dart';
import 'package:coined_one/constants/values/custom_colors.dart';
import 'package:coined_one/constants/values/text_style/text_style.dart';
import 'package:coined_one/controller/home_screen_vew_controller.dart';
import 'package:flutter/material.dart';
import 'package:multi_circular_slider/multi_circular_slider.dart';

class CircularAndTimeSpendWidget extends StatefulWidget {
  final HomeScreenViewController homeScreenViewController;
  const CircularAndTimeSpendWidget(this.homeScreenViewController, {Key? key})
      : super(key: key);

  @override
  State<CircularAndTimeSpendWidget> createState() =>
      _CircularAndTimeSpendWidgetState();
}

class _CircularAndTimeSpendWidgetState
    extends State<CircularAndTimeSpendWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Text(
            'Dashboard',
            style: boldHeadingTextStyle,
          ),
        ),
//Multi color slider
        MultiCircularSlider(
          trackWidth: 15,
          showTotalPercentage: false,
          innerWidget: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Total',
                style: boldHeadingTextStyle,
              ),
              Text(
                '${Duration(seconds: widget.homeScreenViewController.dashboardModel!.data!.screenTime!.total!)}'
                        .split('.')[0]
                        .padLeft(8, '0')
                        .toString()
                        .substring(0, 2) +
                    'h ' +
                    '${Duration(seconds: widget.homeScreenViewController.dashboardModel!.data!.screenTime!.total!)}'
                        .split('.')[0]
                        .padLeft(8, '0')
                        .toString()
                        .substring(3, 5) +
                    'm ',
                style: headingTextStyle,
              )
            ],
          ),
          values: widget.homeScreenViewController.circularIndicatorColorList,
          colors: [
            classColor,
            studyColor,
            freeTimeColor,
            greyColor,
          ],
          size: screenSize(context).width * 0.6,
        ),
        verticalSpace(50),
//Types of spends
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
//Class Time

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      color: classColor,
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  horizontalSpace(5),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Class',
                        style: mediumLiteTextStyle,
                      ),
                      Text(
                        '${Duration(seconds: widget.homeScreenViewController.dashboardModel!.data!.screenTime!.screenTimeClass!)}'
                                .split('.')[0]
                                .padLeft(8, '0')
                                .toString()
                                .substring(0, 2) +
                            'h ' +
                            '${Duration(seconds: widget.homeScreenViewController.dashboardModel!.data!.screenTime!.screenTimeClass!)}'
                                .split('.')[0]
                                .padLeft(8, '0')
                                .toString()
                                .substring(3, 5) +
                            'm ',
                        style: mediumBoldTextStyle,
                      ),
                    ],
                  ),
                ],
              ),
//Study Time
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      color: studyColor,
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  horizontalSpace(5),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Study',
                        style: mediumLiteTextStyle,
                      ),
                      Text(
                        '${Duration(seconds: widget.homeScreenViewController.dashboardModel!.data!.screenTime!.study!)}'
                                    .split('.')[0]
                                    .padLeft(8, '0')
                                    .toString()
                                    .substring(0, 2) ==
                                00
                            ? ''
                                            '${Duration(seconds: widget.homeScreenViewController.dashboardModel!.data!.screenTime!.study!)}'
                                        .split('.')[0]
                                        .padLeft(8, '0')
                                        .toString()
                                        .substring(0, 2) !=
                                    00
                                ? '${Duration(seconds: widget.homeScreenViewController.dashboardModel!.data!.screenTime!.study!)}'
                                        .split('.')[0]
                                        .padLeft(8, '0')
                                        .toString()
                                        .substring(0, 2) +
                                    'h '
                                : ''
                            : '${Duration(seconds: widget.homeScreenViewController.dashboardModel!.data!.screenTime!.study!)}'
                                    .split('.')[0]
                                    .padLeft(8, '0')
                                    .toString()
                                    .substring(3, 5) +
                                'm',
                        style: mediumBoldTextStyle,
                      ),
                    ],
                  ),
                ],
              ),
//Free Time
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      color: freeTimeColor,
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  horizontalSpace(5),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Free-Time',
                        style: mediumLiteTextStyle,
                      ),
                      Text(
                        '${Duration(seconds: widget.homeScreenViewController.dashboardModel!.data!.screenTime!.free!)}'
                                    .split('.')[0]
                                    .padLeft(8, '0')
                                    .toString()
                                    .substring(0, 2) ==
                                00
                            ? ''
                                            '${Duration(seconds: widget.homeScreenViewController.dashboardModel!.data!.screenTime!.free!)}'
                                        .split('.')[0]
                                        .padLeft(8, '0')
                                        .toString()
                                        .substring(0, 2) !=
                                    00
                                ? '${Duration(seconds: widget.homeScreenViewController.dashboardModel!.data!.screenTime!.free!)}'
                                        .split('.')[0]
                                        .padLeft(8, '0')
                                        .toString()
                                        .substring(0, 2) +
                                    'h '
                                : ''
                            : '${Duration(seconds: widget.homeScreenViewController.dashboardModel!.data!.screenTime!.free!)}'
                                    .split('.')[0]
                                    .padLeft(8, '0')
                                    .toString()
                                    .substring(3, 5) +
                                'm',
                        style: mediumBoldTextStyle,
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
