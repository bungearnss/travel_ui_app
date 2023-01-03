import 'dart:ui';
import 'package:flutter/material.dart';

import '../models/destinations.dart';
import '../utils/constants/colors.dart';
import '../utils/image_utils.dart';

class DestinationItem extends StatelessWidget {
  final Destinations destinations;
  const DestinationItem({super.key, required this.destinations});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.network(
          destinations.imageUrl,
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
                children: [
                  const SizedBox(height: 10),
                  Text(destinations.title,
                      style: Theme.of(context).textTheme.displayMedium),
                  Text(
                    destinations.name,
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            ImageUtils.pin,
                            width: 10,
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5.0),
                            child: Text(
                              "${destinations.places} places",
                              style: Theme.of(context).textTheme.displaySmall,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(width: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            ImageUtils.clock,
                            width: 10,
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5.0),
                            child: Text(
                              "Duration: ${destinations.duration} days",
                              style: Theme.of(context).textTheme.displaySmall,
                            ),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
