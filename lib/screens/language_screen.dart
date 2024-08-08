import 'package:esco/screens/seetings_screen.dart';
import 'package:flutter/material.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Languages',
          style: TextStyle(fontSize: 20.0, color: Colors.grey),
        ),
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => const SettingScreen()));
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
                  'English (device’s language)',
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
                    Icons.language,
                    color: Colors.blue,
                    size: 30,
                  ),
                ),
                title: const Text(
                  'Add Another Language',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                onTap: () => {
                  /*Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const StudentDetailsScreen()))*/
                },
              ),
            ],
          ),
        ),
      )),
    );
  }
}
