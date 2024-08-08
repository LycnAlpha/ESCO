import 'package:esco/screens/accounts_screen.dart';
import 'package:esco/screens/help_screen.dart';
import 'package:esco/screens/home_screen.dart';
import 'package:esco/screens/language_screen.dart';
import 'package:esco/screens/logout_screen.dart';
import 'package:esco/screens/notification_screen.dart';
import 'package:esco/screens/privacy_screen.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Settings',
          style: TextStyle(fontSize: 20.0, color: Colors.grey),
        ),
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => const HomeScreen()));
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.grey,
          ),
        ),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                      radius: 40,
                      child: Image.asset('assets/images/image_user_pic.png')),
                  const Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Shreya',
                          style: TextStyle(fontSize: 20.0),
                        ),
                        Text(
                          'xyz123@gmail.com',
                          style: TextStyle(fontSize: 16.0),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const Divider(
                color: Colors.grey,
              ),
              ListTile(
                leading: const Padding(
                  padding: EdgeInsets.only(right: 15),
                  child: Icon(
                    Icons.account_circle,
                    color: Colors.blue,
                    size: 30,
                  ),
                ),
                title: const Text(
                  'Account',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                subtitle: const Text('Add another Account, Remove Accounts'),
                onTap: () => {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => const AccountsScreen()))
                },
              ),
              ListTile(
                leading: const Padding(
                  padding: EdgeInsets.only(right: 15),
                  child: Icon(
                    Icons.lock,
                    color: Colors.blue,
                    size: 30,
                  ),
                ),
                title: const Text(
                  'Privacy',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                subtitle: const Text('Change password'),
                onTap: () => {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => const PrivacyScreen()))
                },
              ),
              ListTile(
                leading: const Padding(
                  padding: EdgeInsets.only(right: 15),
                  child: Icon(
                    Icons.notifications,
                    color: Colors.blue,
                    size: 30,
                  ),
                ),
                title: const Text(
                  'Notifications',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                subtitle: const Text('Reminders, Alert Sounds'),
                onTap: () => {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => const NotificationScreen()))
                },
              ),
              ListTile(
                leading: const Padding(
                  padding: EdgeInsets.only(right: 15),
                  child: Icon(
                    Icons.language,
                    color: Colors.blue,
                    size: 30,
                  ),
                ),
                title: const Text(
                  'Language',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                subtitle: const Text('English (device’s language)'),
                onTap: () => {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => const LanguageScreen()))
                },
              ),
              ListTile(
                leading: const Padding(
                  padding: EdgeInsets.only(right: 15),
                  child: Icon(
                    Icons.help,
                    color: Colors.blue,
                    size: 30,
                  ),
                ),
                title: const Text(
                  'Help',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                subtitle: const Text('Help centre, privacy policy'),
                onTap: () => {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => const HelpScreen()))
                },
              ),
              ListTile(
                leading: const Padding(
                  padding: EdgeInsets.only(right: 15),
                  child: Icon(
                    Icons.info,
                    color: Colors.blue,
                    size: 30,
                  ),
                ),
                title: const Text(
                  'FAQ',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                onTap: () => {
                  /*Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const StudentDetailsScreen()))*/
                },
              ),
              ListTile(
                leading: const Padding(
                  padding: EdgeInsets.only(right: 15),
                  child: Icon(
                    Icons.share,
                    color: Colors.blue,
                    size: 30,
                  ),
                ),
                title: const Text(
                  'Invite friends',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                onTap: () => {
                  /*Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const StudentDetailsScreen()))*/
                },
              ),
              ListTile(
                leading: const Padding(
                  padding: EdgeInsets.only(right: 15),
                  child: Icon(
                    Icons.logout,
                    color: Colors.blue,
                    size: 30,
                  ),
                ),
                title: const Text(
                  'Logout',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                onTap: () => {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => const LogoutScreen()))
                },
              ),
            ],
          ),
        ),
      )),
    );
  }
}
