import 'package:coined_one/constants/values/text_style/text_style.dart';
import 'package:flutter/material.dart';

Future<dynamic> tempShowModelSheet(BuildContext context) {
  return showModalBottomSheet(
    backgroundColor: Colors.transparent,
    context: context,
    builder: (context) => Container(
      height: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      alignment: Alignment.center,
      child: Text(
        'You can edit later',
        style: liteTextStyle,
      ),
    ),
  );
}
