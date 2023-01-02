import 'package:flutter/material.dart';

PreferredSize? appBar(
    String title, void Function()? onPressed, bool isBack, bool isShare) {
  return PreferredSize(
    preferredSize: const Size.fromHeight(30),
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
      leading: isBack == true
          ? IconButton(
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
                size: 22,
              ),
              onPressed: onPressed,
            )
          : null,
      actions: [
        isShare == true
            ? IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.ios_share_sharp,
                  color: Colors.white,
                  size: 24,
                ),
              )
            : Container(),
      ],
    ),
  );
}
