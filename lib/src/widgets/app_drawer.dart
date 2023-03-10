import 'package:flutter/material.dart';

import '../utils/constants/colors.dart';
import '../screens/profile_screen.dart';
import '../utils/common_utils.dart';
import '../utils/text_utils.dart';

class AppDrawer extends StatelessWidget {
  AppDrawer({super.key});

  final List<String> _list = [
    TextUtils.home,
    TextUtils.location,
    TextUtils.favorite,
    TextUtils.wishlist,
    TextUtils.profile,
    TextUtils.setting,
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.drawerColor,
      child: Stack(
        children: [
          ListView.builder(
            itemCount: _list.length,
            itemBuilder: ((context, index) {
              final item = _list[index];
              return GestureDetector(
                onTap: () {
                  if (index == 4) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => const ProfileScreen()),
                      ),
                    );
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 30.0, vertical: 10.0),
                  child: Text(
                    item,
                    style: Theme.of(context)
                        .textTheme
                        .displayMedium!
                        .copyWith(fontSize: 22),
                  ),
                ),
              );
            }),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              alignment: Alignment.center,
              width: CommonUtils.getDeviceWidth(context),
              height: 55,
              color: AppColors.primaryColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.exit_to_app,
                    color: Colors.white,
                    size: 22,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    "Log Out",
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .displayMedium!
                        .copyWith(fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
