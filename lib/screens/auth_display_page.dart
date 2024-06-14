import 'package:esco/screens/login_page.dart';
import 'package:esco/screens/signup_page.dart';
import 'package:flutter/material.dart';

class AuthDisplayPage extends StatelessWidget {
  const AuthDisplayPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: DefaultTabController(
              length: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.max,
                children: [
                  TabBar(
                      indicatorColor: Color(0xFF648DDB),
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicatorWeight: 5,
                      unselectedLabelStyle: TextStyle(color: Colors.grey),
                      labelStyle:
                          TextStyle(color: Color(0xFF648DDB), fontSize: 20.0),
                      tabs: [
                        Tab(
                          text: 'Log in',
                        ),
                        Tab(
                          text: 'Sign up',
                        )
                      ]),
                  Expanded(
                      child: TabBarView(
                          physics: NeverScrollableScrollPhysics(),
                          children: [
                        LoginPage(),
                        SignupPage(),
                      ]))
                ],
              ))),
    );
  }
}
