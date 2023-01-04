import 'package:flutter/material.dart';

import '../utils/constants/colors.dart';

class ErrorPopup extends StatelessWidget {
  final String title;
  final String subtitle;
  const ErrorPopup({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title),
      content: SingleChildScrollView(
        child: ListBody(
          children: <Widget>[
            Text(
              subtitle,
              textAlign: TextAlign.start,
            ),
          ],
        ),
      ),
      actions: <Widget>[
        TextButton(
          child: const Text(
            'OK',
            style: TextStyle(color: AppColors.headColor),
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}
