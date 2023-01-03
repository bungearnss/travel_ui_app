import 'package:flutter/material.dart';
import 'package:travel_ui_app/src/utils/common_utils.dart';

class OnBoardbody extends StatelessWidget {
  final String text;
  const OnBoardbody({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: CommonUtils.getDeviceHeight(context) * 0.25,
          left: CommonUtils.getDeviceWidth(context) * 0.11,
          child: SizedBox(
            width: CommonUtils.getDeviceWidth(context) * 0.8,
            child: Text(
              text,
              style: Theme.of(context).textTheme.displayMedium,
            ),
          ),
        ),
      ],
    );
  }
}
