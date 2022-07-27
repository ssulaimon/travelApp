import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:travel_app/resources/colors.dart';
import 'package:travel_app/resources/images_path.dart';
import 'package:travel_app/resources/routes.dart';

class InstructionScreen extends StatefulWidget {
  const InstructionScreen({Key? key}) : super(key: key);

  @override
  State<InstructionScreen> createState() => _InstructionScreenState();
}

class _InstructionScreenState extends State<InstructionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: IntroductionScreen(
        next: const Text(
          'Next',
          style: TextStyle(color: red),
        ),
        pages: [
          PageViewModel(
            title: '',
            bodyWidget: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Image(
                    image: AssetImage(instruction1),
                    width: 400,
                    height: 400,
                  ),
                  const Text(
                    'Introduction 1',
                    style: TextStyle(color: red),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    text,
                    style: const TextStyle(color: black, height: 1.0),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
          PageViewModel(
            title: '',
            bodyWidget: Column(
              children: [
                const Image(
                  image: AssetImage(introduction2),
                  width: 400,
                  height: 400,
                ),
                const Text(
                  'Introduction 2',
                  style: TextStyle(
                    color: red,
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Text(
                  text,
                  style: const TextStyle(color: black, height: 1.0),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ],
        onDone: () {
          Navigator.pushNamed(context, login);
        },
        onSkip: () {
          Navigator.pushNamed(context, login);
        },
        showSkipButton: true,
        skip: const Text(
          'Skip',
          style: TextStyle(color: red),
        ),
        done: const Text(
          'Done',
          style: TextStyle(color: red),
        ),
      ),
    );
  }
}
