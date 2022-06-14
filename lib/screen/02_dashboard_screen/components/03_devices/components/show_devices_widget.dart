import 'package:coined_one/constants/methods/spacer.dart';
import 'package:coined_one/constants/values/text_style/text_style.dart';
import 'package:flutter/material.dart';

Future<dynamic> showDevicesMethod(
    BuildContext context, homeScreenViewController) {
  return showModalBottomSheet(
    backgroundColor: Colors.transparent,
    context: context,
    builder: (context) => Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.close_rounded),
                )
              ],
            ),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) => ListTile(
                        title: Text(
                          homeScreenViewController
                              .dashboardModel!.data!.devices![index].name
                              .toString(),
                          style: mediumBoldTextStyle,
                        ),
                        subtitle: Text(
                          '${Duration(seconds: homeScreenViewController.dashboardModel!.data!.devices![index].usage!)}'
                                  .split('.')[0]
                                  .padLeft(8, '0')
                                  .toString()
                                  .substring(0, 2) +
                              'h ' +
                              '${Duration(seconds: homeScreenViewController.dashboardModel!.data!.devices![index].usage!)}'
                                  .split('.')[0]
                                  .padLeft(8, '0')
                                  .toString()
                                  .substring(3, 5) +
                              'm ',
                          style: blueMediumBoldTextStyle,
                        ),
                        leading: homeScreenViewController
                                .dashboardModel!.data!.devices![index].name!
                                .contains('Phone')
                            ? const Icon(
                                Icons.phone_android,
                                size: 30,
                              )
                            : homeScreenViewController
                                    .dashboardModel!.data!.devices![index].name!
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
                  itemCount: homeScreenViewController
                      .dashboardModel!.data!.devices!.length),
            ),
          ],
        ),
      ),
    ),
  );
}
