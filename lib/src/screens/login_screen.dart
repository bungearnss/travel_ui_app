import 'package:flutter/material.dart';

import '../components/custom_button.dart';
import '../utils/constants/colors.dart';
import '../utils/common_utils.dart';
import '../utils/image_utils.dart';
import '../utils/text_utils.dart';
import '../screens/destination_screen.dart';
import '../widgets/error_popup.dart';

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

  goToDestinations() {
    if (_username.isEmpty) {
      _showLoginError("Username");
    } else if (_password.isEmpty) {
      _showLoginError("Password");
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: ((context) => const DestinationScreen()),
        ),
      );
    }
  }

  String? _validateUsername(String text) {
    if (_isEditingUserDone == true && (text.isEmpty)) {
      return TextUtils.userIsEmptyError;
    }
    if (_isEditingUserDone == true && (text.length < 5)) {
      return TextUtils.userLenghtError;
    }
    return null;
  }

  String? _validatePassword(String text) {
    if (_isEditingPassDone == true && (text.isEmpty)) {
      return TextUtils.passIsEmptyError;
    }
    if (_isEditingPassDone == true && (text.length < 5)) {
      return TextUtils.passLenghtError;
    }
    return null;
  }

  @override
  void dispose() {
    super.dispose();
    _passwordController.dispose();
    _usernameController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    FocusScopeNode currentFocus = FocusScope.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: CommonUtils.getDeviceHeight(context),
          color: AppColors.themeColor,
          child: Column(
            children: [
              Align(
                alignment: Alignment.center,
                heightFactor: 2,
                child: Image.asset(ImageUtils.logo),
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
                    setState(() {
                      _isEditingUserDone = false;
                    });
                  },
                  onEditingComplete: () {
                    setState(() {
                      _isEditingUserDone = true;
                    });
                    currentFocus.unfocus();
                  },
                  decoration: InputDecoration(
                    errorText: _validateUsername(_username),
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
                    suffixIcon: _username.isEmpty || _isEditingUserDone == true
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
                  obscureText: true,
                  textAlignVertical: TextAlignVertical.center,
                  keyboardType: TextInputType.text,
                  cursorColor: AppColors.primaryColor,
                  style: Theme.of(context)
                      .textTheme
                      .displayMedium!
                      .copyWith(fontSize: 16),
                  onChanged: (txt) {
                    _onPassChanged("password", txt);
                    setState(() {
                      _isEditingPassDone = false;
                    });
                  },
                  onEditingComplete: () {
                    setState(() {
                      _isEditingPassDone = true;
                    });
                    currentFocus.unfocus();
                  },
                  decoration: InputDecoration(
                    errorText: _validatePassword(_password),
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
                    suffixIcon: _password.isEmpty || _isEditingPassDone == true
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
              SizedBox(height: CommonUtils.getDeviceHeight(context) * 0.04),
              CustomButton(title: "Login", onPressed: goToDestinations),
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

  Future<void> _showLoginError(String title) async {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: ((context) {
        return ErrorPopup(
            title: "$title Error",
            subtitle: "Please enter your ${title.toLowerCase()}.");
      }),
    );
  }
}
