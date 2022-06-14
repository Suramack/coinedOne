import 'package:coined_one/constants/methods/screen_size.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

Widget customShimmer(BuildContext context) => Shimmer.fromColors(
      child: Container(
        width: screenSize(context).width,
        height: screenSize(context).height * 0.5,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      baseColor: Colors.grey.shade100,
      highlightColor: Colors.grey.shade300,
    );
