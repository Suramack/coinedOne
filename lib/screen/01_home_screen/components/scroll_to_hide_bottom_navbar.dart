import 'package:coined_one/controller/bottom_navbar_view_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

class ScrollToHideWidget extends StatefulWidget {
  final Duration duration;
  final Widget child;
  const ScrollToHideWidget({
    Key? key,
    required this.child,
    this.duration = const Duration(milliseconds: 200),
  }) : super(key: key);

  @override
  State<ScrollToHideWidget> createState() => _ScrollToHideWidgetState();
}

class _ScrollToHideWidgetState extends State<ScrollToHideWidget> {
  final scrollToHideWidgetViewController =
      Get.put(ScrollToHideWidgetViewController());

  @override
  void initState() {
    scrollToHideWidgetViewController.controller.addListener(listen);
    super.initState();
  }

  void listen() {
    final scrollingDirection = scrollToHideWidgetViewController
        .controller.position.userScrollDirection;
    if (scrollingDirection == ScrollDirection.reverse) {
      scrollToHideWidgetViewController.hideBottomNavigationBar();
    } else if (scrollingDirection == ScrollDirection.forward) {
      scrollToHideWidgetViewController.showBottomNavigationBar();
    }
  }

  @override
  void dispose() {
    scrollToHideWidgetViewController.controller.removeListener(listen);

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ScrollToHideWidgetViewController>(
      builder: (_) {
        return AnimatedContainer(
          duration: widget.duration,
          height: scrollToHideWidgetViewController.bottomNavigationBarisVisible
              ? kBottomNavigationBarHeight
              : 0,
          child: Wrap(
            children: [
              widget.child,
            ],
          ),
        );
      },
    );
  }
}
