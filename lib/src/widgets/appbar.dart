import 'package:flutter/material.dart';

PreferredSize? appBar(String title, void Function()? onPressed) {
  return PreferredSize(
    preferredSize: const Size.fromHeight(25),
    child: AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      centerTitle: true,
      title: Padding(
        padding: const EdgeInsets.only(top: 8),
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
  );
}
