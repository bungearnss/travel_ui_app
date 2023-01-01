import 'package:flutter/material.dart';
import 'package:travel_ui_app/src/utils/text_utils.dart';

import '../utils/constants/colors.dart';
import '../components/custom_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  String _username = "";
  String _password = "";
  bool _isEditingUserDone = false;
  bool _isEditingPassDone = false;

  _onPassChanged(String type, String txt) {
    if (type == "username") {
      setState(() {
        _username = txt;
      });
    }
    if (type == "password") {
      setState(() {
        _password = txt;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    FocusScopeNode currentFocus = FocusScope.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: height,
          color: AppColors.themeColor,
          child: Column(
            children: [
              Align(
                alignment: Alignment.center,
                heightFactor: 2,
                child: Image.asset("assets/images/logo.png"),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: TextField(
                  controller: _usernameController,
                  textAlignVertical: TextAlignVertical.center,
                  keyboardType: TextInputType.text,
                  cursorColor: AppColors.primaryColor,
                  style: Theme.of(context)
                      .textTheme
                      .displayMedium!
                      .copyWith(fontSize: 16),
                  onChanged: (txt) {
                    _onPassChanged("username", txt);
                  },
                  onEditingComplete: () {
                    setState(() {
                      _isEditingUserDone = true;
                    });
                    currentFocus.unfocus();
                  },
                  decoration: InputDecoration(
                    enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 2),
                    ),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 2),
                    ),
                    prefixIcon: const Icon(
                      Icons.person_outline_rounded,
                      color: Colors.white,
                      size: 27,
                    ),
                    suffixIcon: _username == "" || _isEditingUserDone == true
                        ? null
                        : IconButton(
                            onPressed: _usernameController.clear,
                            icon: const Icon(
                              Icons.clear,
                              color: Colors.white,
                              size: 16,
                            ),
                          ),
                    hintText: "Username",
                    hintStyle:
                        const TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30.0, vertical: 15),
                child: TextField(
                  controller: _passwordController,
                  textAlignVertical: TextAlignVertical.center,
                  keyboardType: TextInputType.text,
                  cursorColor: AppColors.primaryColor,
                  style: Theme.of(context)
                      .textTheme
                      .displayMedium!
                      .copyWith(fontSize: 16),
                  onChanged: (txt) {
                    _onPassChanged("password", txt);
                  },
                  onEditingComplete: () {
                    setState(() {
                      _isEditingPassDone = true;
                    });
                    currentFocus.unfocus();
                  },
                  decoration: InputDecoration(
                    enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 2),
                    ),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 2),
                    ),
                    prefixIcon: const Icon(
                      Icons.lock_outline_rounded,
                      color: Colors.white,
                      size: 27,
                    ),
                    suffixIcon: _password == "" || _isEditingPassDone == true
                        ? null
                        : IconButton(
                            onPressed: _passwordController.clear,
                            icon: const Icon(
                              Icons.clear,
                              color: Colors.white,
                              size: 16,
                            ),
                          ),
                    hintText: "Password",
                    hintStyle:
                        const TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
              SizedBox(height: height * 0.08),
              const CustomButton(title: "Login"),
              const SizedBox(height: 15),
              Text(
                TextUtils.signUp,
                style: Theme.of(context)
                    .textTheme
                    .displayMedium!
                    .copyWith(fontSize: 14),
              ),
              Text(
                TextUtils.forgetPass,
                style: Theme.of(context)
                    .textTheme
                    .displayMedium!
                    .copyWith(fontSize: 14),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
