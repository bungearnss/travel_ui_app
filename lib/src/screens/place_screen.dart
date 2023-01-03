import 'package:flutter/material.dart';

import '../models/destinations.dart';
import '../widgets/appbar.dart';
import '../widgets/destination_item.dart';
import '../widgets/place_item.dart';
import '../utils/constants/mock_data.dart';
import '../utils/common_utils.dart';
import '../screens/place_detail_screen.dart';

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

class _PlaceScreenState extends State<PlaceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(_appTitle(widget.destinations.name),
          () => CommonUtils.goBack(context), true, Container()),
      extendBodyBehindAppBar: true,
      body: Column(
        children: [
          SizedBox(
            width: CommonUtils.getDeviceWidth(context),
            height: CommonUtils.getDeviceHeight(context) * 0.4,
            child: DestinationItem(
              destinations: destinationList[0],
            ),
          ),
          SizedBox(
            height: CommonUtils.getDeviceHeight(context) * 0.6,
            child: ListView.builder(
              padding: const EdgeInsets.only(top: 10),
              itemCount: placeList.length,
              itemBuilder: (context, index) {
                final item = placeList[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              PlaceDetailScreen(places: item)),
                    );
                  },
                  child: PlaceItem(
                    places: item,
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
