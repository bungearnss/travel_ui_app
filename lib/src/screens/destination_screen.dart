import 'package:flutter/material.dart';

import '../widgets/appbar.dart';
import '../widgets/destination_item.dart';

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
      appBar: appBar("Destinations", () {}),
      extendBodyBehindAppBar: true,
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: DestinationItem(
              destinations: destinationList[0],
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
