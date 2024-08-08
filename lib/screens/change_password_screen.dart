import 'package:esco/screens/password_change_success_screen.dart';
import 'package:esco/screens/privacy_screen.dart';
import 'package:flutter/material.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  final TextEditingController password = TextEditingController();
  final TextEditingController confirmPassword = TextEditingController();
  bool passwordVisible = false;
  bool currentPasswordVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15.0),
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PrivacyScreen()));
                },
                child: Container(
                  padding: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.grey.shade300),
                  child: const Icon(
                    Icons.arrow_back_ios,
                    size: 25.0,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 15.0),
                child: Text(
                  'Set a new password',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25.0),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 15.0),
                child: Text(
                  'Create a new password. Ensure it differs from previous ones for security',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16.0,
                      color: Colors.grey),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.symmetric(
                    horizontal: 10.0, vertical: 10.0),
                child: const Text(
                  'Current Password',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 16),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.07,
                child: TextFormField(
                  controller: password,
                  obscureText: !passwordVisible,
                  decoration: InputDecoration(
                      hintText: 'Enter your current password',
                      hintStyle: TextStyle(color: Colors.grey.shade400),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0)),
                      suffix: showCurrentPasswordButton()),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.symmetric(
                    horizontal: 10.0, vertical: 10.0),
                child: const Text(
                  'New Password',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 16),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.07,
                child: TextFormField(
                  controller: password,
                  obscureText: !passwordVisible,
                  decoration: InputDecoration(
                      hintText: 'Enter your new password',
                      hintStyle: TextStyle(color: Colors.grey.shade400),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0)),
                      suffix: showPasswordButton()),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.symmetric(
                    horizontal: 10.0, vertical: 10.0),
                child: const Text(
                  'Confirm Password',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 16),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.07,
                child: TextFormField(
                  controller: password,
                  obscureText: !passwordVisible,
                  decoration: InputDecoration(
                      hintText: 'Re-enter new password',
                      hintStyle: TextStyle(color: Colors.grey.shade400),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0)),
                      suffix: showPasswordButton()),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 20.0,
                ),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const PasswordChangeSuccessScreen()));
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: MediaQuery.of(context).size.height * 0.06,
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: const Color(0xFF648DDB)),
                    child: const Text(
                      'Update Password',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 15.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }

  Widget showPasswordButton() {
    return IconButton(
        onPressed: () {
          setState(() {
            passwordVisible = !passwordVisible;
          });
        },
        icon: passwordVisible
            ? Icon(
                Icons.visibility,
                color: Colors.grey.shade400,
              )
            : Icon(
                Icons.visibility_off,
                color: Colors.grey.shade400,
              ));
  }

  Widget showCurrentPasswordButton() {
    return IconButton(
        onPressed: () {
          setState(() {
            currentPasswordVisible = !currentPasswordVisible;
          });
        },
        icon: currentPasswordVisible
            ? Icon(
                Icons.visibility,
                color: Colors.grey.shade400,
              )
            : Icon(
                Icons.visibility_off,
                color: Colors.grey.shade400,
              ));
  }
}
