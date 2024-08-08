import 'package:esco/screens/seetings_screen.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Notifications',
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
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
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
                  'Reminders',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                onTap: () => {
                  /*Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const StudentDetailsScreen()))*/
                },
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 50.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Checkbox(value: true, onChanged: (value) {}),
                        const Text('5 Minutes')
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(value: true, onChanged: (value) {}),
                        const Text('10 Minutes')
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(value: true, onChanged: (value) {}),
                        const Text('30 Minutes')
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(value: true, onChanged: (value) {}),
                        const Text('1 Hour')
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(value: true, onChanged: (value) {}),
                        const Text('2 Hours')
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(value: true, onChanged: (value) {}),
                        const Text('1 Day')
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(value: true, onChanged: (value) {}),
                        const Text('2 Days')
                      ],
                    ),
                  ],
                ),
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
                  'Alert Sounds',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                onTap: () => {
                  /*Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const StudentDetailsScreen()))*/
                },
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 50.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Radio(
                            value: true, groupValue: true, onChanged: (val) {}),
                        const Text('Only ring')
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                            value: false,
                            groupValue: true,
                            onChanged: (val) {}),
                        const Text('Only vibrate')
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                            value: false,
                            groupValue: true,
                            onChanged: (val) {}),
                        const Text('Ringing tone and vibrate')
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
