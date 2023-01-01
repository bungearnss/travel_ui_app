import 'dart:async';

import 'package:flutter/material.dart';
import 'package:travel_ui_app/src/screens/login_screen.dart';

import '../utils/text_utils.dart';
import '../components/onboard_body.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController _pageController = PageController(initialPage: 0);
  final int _totalDots = 3;
  double _currentPosition = 0.0;

  double _validatePosition(double position) {
    if (position >= _totalDots) return 0;
    if (position < 0) return _totalDots - 1;
    return position;
  }

  void _updatePosition(int position) {
    setState(() {
      _currentPosition = _validatePosition(position.toDouble());
    });
  }

  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 2), (timer) {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 2000),
      child: Scaffold(
        body: Container(
          height: double.maxFinite,
          width: double.maxFinite,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fitHeight,
              colorFilter: ColorFilter.mode(
                Color.fromARGB(153, 164, 175, 184),
                BlendMode.srcOver,
              ),
              image: AssetImage("assets/images/cloud.jpg"),
            ),
          ),
          child: Stack(
            children: [
              PageView(
                controller: _pageController,
                onPageChanged: _updatePosition,
                children: const [
                  OnBoardbody(text: TextUtils.onboarding_1),
                  OnBoardbody(text: TextUtils.onboarding_2),
                  OnBoardbody(text: TextUtils.onboarding_3),
                ],
              ),
              Align(
                alignment: Alignment.center,
                heightFactor: 2,
                child: Image.asset("assets/images/logo.png"),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin: const EdgeInsets.only(bottom: 30),
                  width: width,
                  height: 10,
                  alignment: Alignment.center,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: _totalDots,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 10,
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                          color: _currentPosition == index
                              ? Colors.white
                              : Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(30),
                        ),
                      );
                    },
                  ),
                ),
              ),
              _currentPosition == 2 ? showButton(width) : Container(),
            ],
          ),
        ),
      ),
    );
  }

  Widget showButton(double width) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: ((context) => const LoginScreen()),
          ),
        );
      },
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          margin: const EdgeInsets.only(bottom: 80),
          width: width * 0.5,
          height: 45,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              border: Border.all(width: 3, color: Colors.white),
              borderRadius: BorderRadius.circular(4)),
          child: Text(
            "Get started",
            style: Theme.of(context)
                .textTheme
                .displayMedium!
                .copyWith(fontWeight: FontWeight.w600, height: 1),
          ),
        ),
      ),
    );
  }
}
