import 'package:esco/screens/add_new_account_screen.dart';
import 'package:esco/screens/seetings_screen.dart';
import 'package:flutter/material.dart';

class AccountsScreen extends StatelessWidget {
  const AccountsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Accounts',
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
                    Icons.add_circle,
                    color: Colors.blue,
                    size: 30,
                  ),
                ),
                title: const Text(
                  'Add Another Account',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                onTap: () => {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => const AddNewAccountScreen()))
                },
              ),
              ListTile(
                leading: const Padding(
                  padding: EdgeInsets.only(right: 15),
                  child: Icon(
                    Icons.remove_circle,
                    color: Colors.blue,
                    size: 30,
                  ),
                ),
                title: const Text(
                  'Remove Account',
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
