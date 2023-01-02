import 'dart:ui';

import 'package:flutter/material.dart';

import '../models/places.dart';

class PlaceHeader extends StatelessWidget {
  final Places places;
  const PlaceHeader({super.key, required this.places});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.network(
          places.imageUrl,
          fit: BoxFit.cover,
        ),
        ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
            child: Container(
              color: const Color.fromARGB(210, 50, 53, 70),
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(places.title.toUpperCase(),
                      style: Theme.of(context).textTheme.headlineLarge),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: 250,
                    child: Text(
                      "Traveling through\n${places.name}, ${places.country}",
                      style: Theme.of(context)
                          .textTheme
                          .displayLarge!
                          .copyWith(height: 1.4),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.only(top: 25.0),
                    child: Text(
                      "Posted by ${places.owner}",
                      style: Theme.of(context)
                          .textTheme
                          .displaySmall!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
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
