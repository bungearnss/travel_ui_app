import 'package:flutter/material.dart';

import '../utils/constants/colors.dart';
import '../utils/common_utils.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final Function()? onPressed;
  const CustomButton({super.key, required this.title, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.symmetric(horizontal: 30.0),
        width: CommonUtils.getDeviceWidth(context),
        height: 55,
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(3),
        ),
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: Theme.of(context)
              .textTheme
              .displayMedium!
              .copyWith(fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
