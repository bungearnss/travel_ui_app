import 'package:flutter/material.dart';
import 'package:travel_ui_app/src/utils/constants/colors.dart';

import '../widgets/appbar.dart';
import '../widgets/place_header.dart';
import '../utils/common_utils.dart';
import '../models/places.dart';

class PlaceDetailScreen extends StatefulWidget {
  final Places places;
  const PlaceDetailScreen({super.key, required this.places});

  @override
  State<PlaceDetailScreen> createState() => _PlaceDetailScreenState();
}

class _PlaceDetailScreenState extends State<PlaceDetailScreen> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: appBar("", () => CommonUtils.goBack(context), true, true),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                SizedBox(
                  width: width,
                  height: height * 0.4,
                  child: PlaceHeader(
                    places: widget.places,
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.chat_bubble_outline_rounded,
                      color: AppColors.headColor,
                      size: 20,
                    ),
                    const SizedBox(width: 5),
                    Text(
                      "${widget.places.comments} Comments",
                      style: Theme.of(context)
                          .textTheme
                          .headlineLarge!
                          .copyWith(fontSize: 13, height: 0),
                    ),
                    const SizedBox(width: 30),
                    const Icon(
                      Icons.thumb_up_alt_outlined,
                      color: AppColors.headColor,
                      size: 20,
                    ),
                    const SizedBox(width: 3),
                    Text(
                      " ${widget.places.likes.toInt()} likes",
                      style: Theme.of(context)
                          .textTheme
                          .headlineLarge!
                          .copyWith(fontSize: 15, height: 0),
                    ),
                  ],
                ),
                const SizedBox(height: 35),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 25.0, right: 25.0, bottom: 30.0),
                  child: Text(
                    widget.places.description,
                    style: Theme.of(context)
                        .textTheme
                        .displayMedium!
                        .copyWith(color: Colors.grey.shade700, height: 1.4),
                  ),
                )
              ],
            ),
            Positioned(
              top: 280,
              right: 20,
              child: Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                  color: AppColors.greyColor,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Icon(
                  Icons.favorite_rounded,
                  color: Colors.white,
                  size: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
