import 'package:flutter/material.dart';

import '../widgets/appbar.dart';
import '../widgets/destination_item.dart';
import '../widgets/app_drawer.dart';
import '../screens/place_screen.dart';
import '../utils/constants/mock_data.dart';

class DestinationScreen extends StatefulWidget {
  const DestinationScreen({super.key});

  @override
  State<DestinationScreen> createState() => _DestinationScreenState();
}

class _DestinationScreenState extends State<DestinationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("Destinations", () {}, false, false),
      extendBodyBehindAppBar: true,
      drawer: AppDrawer(),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        PlaceScreen(destinations: destinationList[0]),
                  ),
                );
              },
              child: DestinationItem(
                destinations: destinationList[0],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: DestinationItem(
              destinations: destinationList[1],
            ),
          ),
          Expanded(
            flex: 1,
            child: DestinationItem(
              destinations: destinationList[2],
            ),
          ),
        ],
      ),
    );
  }
}
