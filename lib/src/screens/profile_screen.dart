import 'dart:ui';
import 'package:flutter/material.dart';

import '../widgets/appbar.dart';
import '../utils/constants/mock_data.dart';
import '../utils/common_utils.dart';
import '../utils/image_utils.dart';
import '../utils/constants/colors.dart';

import '../widgets/like_item.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int _isActive = 0;

  _onPressed(int index) {
    setState(() {
      _isActive = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    final List<String> infoList = [
      userProfile.post.toString(),
      userProfile.like.toString(),
      userProfile.follower.toString(),
      userProfile.following.toString(),
    ];

    final List<String> infoDescriptionList = [
      "Posts",
      "Likes",
      "Followers",
      "Following",
    ];
    TextStyle amountStyle = Theme.of(context)
        .textTheme
        .displayLarge!
        .copyWith(fontWeight: FontWeight.w500);
    TextStyle txtAmountStyle = Theme.of(context)
        .textTheme
        .displayMedium!
        .copyWith(height: 0, fontWeight: FontWeight.w500);
    return Scaffold(
      appBar: appBar(
        "Profile",
        () => CommonUtils.goBack(context),
        true,
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.settings,
            color: Colors.white,
            size: 24,
          ),
        ),
      ),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                SizedBox(
                  width: width,
                  height: height * 0.58,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Image.network(
                        "https://encrypted-tbn3.gstatic.com/licensed-image?q=tbn:ANd9GcSOhZoM5T8WbVVaZKrF71DTnJ64poL01p2ICRRu4q1vYMzr3G4gh6A9HTZijjV-uP-xi3IbNPeVFRus4XAgnAiDaA",
                        fit: BoxFit.cover,
                      ),
                      ClipRRect(
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                          child: Container(
                            color: const Color.fromARGB(210, 50, 53, 70),
                            alignment: Alignment.center,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const SizedBox(height: 10),
                                const CircleAvatar(
                                  backgroundImage:
                                      NetworkImage(ImageUtils.profile),
                                  radius: 55,
                                ),
                                const SizedBox(height: 50),
                                SizedBox(
                                  width: 250,
                                  child: Text(
                                    userProfile.name,
                                    style: Theme.of(context)
                                        .textTheme
                                        .displayLarge!
                                        .copyWith(height: 0),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  userProfile.description,
                                  style: Theme.of(context)
                                      .textTheme
                                      .displaySmall!
                                      .copyWith(fontSize: 15),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: infoList.length,
                        itemBuilder: (context, index) {
                          return SizedBox(
                            width: width * 0.25,
                            child: GestureDetector(
                              onTap: () {
                                _onPressed(index);
                              },
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(infoList[index], style: amountStyle),
                                  Text(infoDescriptionList[index],
                                      style: txtAmountStyle),
                                  const SizedBox(height: 20),
                                  _isActive == index
                                      ? Container(
                                          width: 60,
                                          height: 5,
                                          color: AppColors.headColor,
                                        )
                                      : Container(height: 5),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                // LikeItem(places: placeList[0]),
                showItem(_isActive),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget showItem(int index) {
    Widget show = _showPostDetail();
    if (index == 1) {
      show = LikeItem(places: placeList[0]);
    }
    return show;
  }

  Widget _showPostDetail() {
    return Center(
      heightFactor: 5,
      child: Text(
        "You don't have any posts yet.\nposting to share the fun!",
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.displayMedium!.copyWith(
              color: AppColors.drawerColor,
            ),
      ),
    );
  }
}
