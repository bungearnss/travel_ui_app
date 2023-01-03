import 'dart:ui';
import 'package:flutter/material.dart';

import '../utils/image_utils.dart';
import '../utils/constants/colors.dart';
import '../models/places.dart';

class LikeItem extends StatelessWidget {
  final Places places;
  const LikeItem({super.key, required this.places});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        width: width,
        height: 110,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3),
        ),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.network(
              ImageUtils.canada,
              fit: BoxFit.cover,
            ),
            ClipRRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                child: Container(
                  color: AppColors.drawerColor.withOpacity(.82),
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 250,
                        child: Text(
                          "${places.name}, ${places.country}",
                          style: Theme.of(context)
                              .textTheme
                              .displayLarge!
                              .copyWith(height: 1.4),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Text(
                        places.title,
                        style: Theme.of(context)
                            .textTheme
                            .displayMedium!
                            .copyWith(height: 0),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
