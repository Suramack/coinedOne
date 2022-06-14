import 'package:coined_one/constants/methods/screen_size.dart';
import 'package:coined_one/constants/methods/spacer.dart';
import 'package:coined_one/constants/methods/temp_method.dart';
import 'package:coined_one/constants/values/custom_colors.dart';
import 'package:coined_one/constants/values/text_style/text_style.dart';
import 'package:coined_one/controller/home_screen_vew_controller.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class FreeTimeUsageWidget extends StatefulWidget {
  final HomeScreenViewController homeScreenViewController;
  const FreeTimeUsageWidget(
    this.homeScreenViewController, {
    Key? key,
  }) : super(key: key);

  @override
  State<FreeTimeUsageWidget> createState() => _FreeTimeUsageWidgetState();
}

class _FreeTimeUsageWidgetState extends State<FreeTimeUsageWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Free-time Usage',
          style: boldHeadingTextStyle,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              verticalSpace(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Used',
                    style: mediumLiteBoldTextStyle,
                  ),
                  Text(
                    'Max',
                    style: mediumLiteBoldTextStyle,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${Duration(seconds: widget.homeScreenViewController.dashboardModel!.data!.freeTime!.usage!)}'
                                .split('.')[0]
                                .padLeft(8, '0')
                                .toString()
                                .substring(0, 2) ==
                            00
                        ? ''
                        : '${Duration(seconds: widget.homeScreenViewController.dashboardModel!.data!.freeTime!.usage!)}'
                                    .split('.')[0]
                                    .padLeft(8, '0')
                                    .toString()
                                    .substring(0, 2) !=
                                '00'
                            ? '${Duration(seconds: widget.homeScreenViewController.dashboardModel!.data!.freeTime!.usage!)}'
                                    .split('.')[0]
                                    .padLeft(8, '0')
                                    .toString()
                                    .substring(0, 2) +
                                'h'
                            : '${Duration(seconds: widget.homeScreenViewController.dashboardModel!.data!.freeTime!.usage!)}'
                                    .split('.')[0]
                                    .padLeft(8, '0')
                                    .toString()
                                    .substring(3, 5) +
                                'm ',
                    style: greenMediumBoldTextStyle,
                  ),
                  Text(
                    '${Duration(seconds: widget.homeScreenViewController.dashboardModel!.data!.freeTime!.limit!)}'
                                .split('.')[0]
                                .padLeft(8, '0')
                                .toString()
                                .substring(0, 2) ==
                            00
                        ? ''
                        : '${Duration(seconds: widget.homeScreenViewController.dashboardModel!.data!.freeTime!.limit!)}'
                                    .split('.')[0]
                                    .padLeft(8, '0')
                                    .toString()
                                    .substring(0, 2) !=
                                00
                            ? '${Duration(seconds: widget.homeScreenViewController.dashboardModel!.data!.freeTime!.limit!)}'
                                    .split('.')[0]
                                    .padLeft(8, '0')
                                    .toString()
                                    .substring(0, 2) +
                                'h ' +
                                '${Duration(seconds: widget.homeScreenViewController.dashboardModel!.data!.freeTime!.limit!)}'
                                    .split('.')[0]
                                    .padLeft(8, '0')
                                    .toString()
                                    .substring(3, 5) +
                                'm '
                            : '',
                    style: mediumBoldTextStyle,
                  ),
                ],
              ),
              verticalSpace(20),

//Linear percent indicator

              LinearPercentIndicator(
                lineHeight: 20,
                progressColor: freeTimeColor,
                percent: widget
                    .homeScreenViewController.linearProgressFreeTimePercent,
                barRadius: const Radius.circular(50),
              ),
              verticalSpace(20),

//Extend free-time Button

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  maximumSize: Size(screenSize(context).width, 45),
                  minimumSize: Size(screenSize(context).width, 45),
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                    side: const BorderSide(
                      color: Colors.blue,
                    ),
                  ),
                  shadowColor: Colors.transparent,
                  onPrimary: Colors.blue,
                ),
                onPressed: () => tempShowModelSheet(context),
                child: const Text('Extend Free-time'),
              ),
              verticalSpace(10),

//Text Button

              TextButton(
                onPressed: () => tempShowModelSheet(context),
                child: const Text('Change Time Restrictions'),
              )
            ],
          ),
        )
      ],
    );
  }
}
