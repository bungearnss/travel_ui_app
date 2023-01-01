import 'package:flutter/material.dart';

import '../models/destinations.dart';
import '../widgets/appbar.dart';
import '../widgets/destination_item.dart';
import '../widgets/place_item.dart';
import '../utils/constants/mock_data.dart';

class PlaceScreen extends StatefulWidget {
  final Destinations destinations;
  const PlaceScreen({super.key, required this.destinations});

  @override
  State<PlaceScreen> createState() => _PlaceScreenState();
}

String _appTitle(String txt) {
  String title = "";
  final splitted = txt.split(' ');
  title = splitted[2];
  return title;
}

_goBack(BuildContext context) {
  Navigator.popAndPushNamed(context, '/destination');
}

class _PlaceScreenState extends State<PlaceScreen> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: appBar(_appTitle(widget.destinations.name),
          () => _goBack(context), "detail"),
      extendBodyBehindAppBar: true,
      body: Column(
        children: [
          SizedBox(
            width: width,
            height: height * 0.4,
            child: DestinationItem(
              destinations: destinationList[0],
            ),
          ),
          SizedBox(
            height: height * 0.6,
            child: ListView.builder(
              itemCount: placeList.length,
              itemBuilder: (context, index) {
                final item = placeList[index];
                return PlaceItem(
                  places: item,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
