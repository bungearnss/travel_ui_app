import 'package:flutter/material.dart';

import '../models/places.dart';
import '../utils/constants/colors.dart';

class PlaceItem extends StatelessWidget {
  final Places places;
  const PlaceItem({super.key, required this.places});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 0.6, color: Colors.grey.shade200),
        ),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Image.network(
              places.imageUrl,
              height: 110,
              width: 110,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        places.name,
                        style: Theme.of(context)
                            .textTheme
                            .displayLarge!
                            .copyWith(color: AppColors.detailColor, height: 0),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                      Text(
                        places.title,
                        style: Theme.of(context)
                            .textTheme
                            .displayMedium!
                            .copyWith(color: AppColors.detailColor, height: 0),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.location_on_rounded,
                        color: AppColors.detailColor,
                        size: 13,
                      ),
                      Text(
                        "${places.distance} KM",
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall!
                            .copyWith(color: AppColors.detailColor),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          const Expanded(
            flex: 1,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: EdgeInsets.only(bottom: 20.0),
                child: Icon(
                  Icons.monetization_on_sharp,
                  color: AppColors.detailColor,
                  size: 15,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
