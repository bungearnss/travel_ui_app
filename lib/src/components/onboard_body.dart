import 'package:flutter/material.dart';

class OnBoardbody extends StatelessWidget {
  final String text;
  const OnBoardbody({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Positioned(
          bottom: height * 0.25,
          left: width * 0.11,
          child: SizedBox(
            width: width * 0.8,
            child: Text(
              text,
              style: const TextStyle(
                  color: Colors.white, fontSize: 17, height: 1.7),
            ),
          ),
        ),
      ],
    );
  }
}
