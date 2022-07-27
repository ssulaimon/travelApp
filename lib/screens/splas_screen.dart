import 'package:flutter/material.dart';

import 'package:travel_app/resources/colors.dart';
import 'package:travel_app/resources/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future<void> nextScreen() async {
    return await Future.delayed(const Duration(milliseconds: 4), () {
      Navigator.pushNamed(context, instructionScreen);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    nextScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Travel',
                style: TextStyle(
                  color: black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'App',
                style: TextStyle(
                  color: red,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const Text(
            'Your tigeline here',
            style: TextStyle(
              color: black,
              fontSize: 10,
            ),
          )
        ],
      ),
    );
  }
}
