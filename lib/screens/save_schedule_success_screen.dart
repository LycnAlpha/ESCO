import 'package:esco/screens/home_screen.dart';
import 'package:flutter/material.dart';

class SaveScheduleSuccessScreen extends StatelessWidget {
  const SaveScheduleSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15.0),
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(25.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: const Color(0xFF648DDB).withOpacity(0.1),
                    border:
                        Border.all(color: const Color(0xFF648DDB), width: 1.5)),
                child: const Icon(
                  Icons.check,
                  size: 32,
                  color: Color(0xFF648DDB),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 15.0),
              child: Text(
                'Successful',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25.0),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 15.0),
              child: Text(
                textAlign: TextAlign.center,
                'New Schedule has been added Successfully!',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16.0,
                    color: Colors.grey),
              ),
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
                          builder: (context) => const HomeScreen()));
                },
                child: Container(
                  alignment: Alignment.center,
                  height: MediaQuery.of(context).size.height * 0.06,
                  padding: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: const Color(0xFF648DDB)),
                  child: const Text(
                    'Continue',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 15.0),
                  ),
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
