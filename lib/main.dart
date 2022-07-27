import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/firebase_options.dart';

import 'package:travel_app/resources/routes.dart';
import 'package:travel_app/screens/home_page.dart';
import 'package:travel_app/screens/instruction_screen.dart';
import 'package:travel_app/screens/login.dart';
import 'package:travel_app/screens/signup.dart';
import 'package:travel_app/screens/splas_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MaterialApp(
    initialRoute: splashScreen,
    routes: {
      splashScreen: (context) => const SplashScreen(),
      instructionScreen: (context) => const InstructionScreen(),
      signUp: (context) => const Signup(),
      login: (context) => const Login(),
      homePage: (context) => const HomePage(),
    },
  ));
}
