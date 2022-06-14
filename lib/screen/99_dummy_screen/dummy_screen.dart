import 'package:coined_one/constants/values/text_style/text_style.dart';
import 'package:flutter/material.dart';

class DummyScreen extends StatelessWidget {
  const DummyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0, title: const Text('Nothing in here')),
      body: Center(
          child: Text(
        'Dummy Screen',
        style: liteTextStyle,
      )),
    );
  }
}
