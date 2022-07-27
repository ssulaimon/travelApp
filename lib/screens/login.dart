import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'package:travel_app/authentication/firebase_authentication.dart';
import 'package:travel_app/resources/colors.dart';
import 'package:travel_app/resources/routes.dart';
import 'package:travel_app/screens/dailogue.dart';
import 'package:travel_app/screens/signup.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController? email;
  TextEditingController? password;
  var sizedBox = const SizedBox(
    height: 20,
  );
  bool loading = false;
  @override
  void initState() {
    // TODO: implement initState
    email = TextEditingController();
    password = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    email?.dispose();
    password?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
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
                const Center(
                  child: Text(
                    'Your tigeline here',
                    style: TextStyle(
                      color: black,
                      fontSize: 10,
                    ),
                  ),
                ),
                sizedBox,
                const Text('Login to your  account'),
                const SizedBox(
                  height: 40.0,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text('Email'),
                ),
                TextField(
                  controller: email,
                  decoration: InputDecoration(
                    hintText: 'youremail@domain.com',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ),
                sizedBox,
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text('Password'),
                ),
                TextField(
                  controller: password,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        30.0,
                      ),
                    ),
                  ),
                ),
                sizedBox,
                Center(
                  child: GestureDetector(
                    onTap: () async {
                      // setState(() {
                      //   loading = true;
                      // });
                      // FirebaseAuthentication firebaseAuthentication =
                      //     FirebaseAuthentication(
                      //   email: email!.text,
                      //   password: password!.text,
                      // );
                      // String? loginUser =
                      //     await firebaseAuthentication.loginUser();
                      // if (loginUser != 'user login') {
                      //   showErrorDialogue(
                      //       context: context, errorMessage: loginUser!);
                      // } else {
                      //   Navigator.popAndPushNamed(context, homePage);
                      // }
                      Navigator.popAndPushNamed(context, homePage);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: red,
                        borderRadius: BorderRadius.circular(
                          30.0,
                        ),
                      ),
                      width: 300,
                      height: 50,
                      child: const Center(
                        child: Text(
                          'Login',
                          style: TextStyle(
                            color: white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        signUp,
                      );
                    },
                    child: const Text(
                      'Don\'t have an account?Create ',
                      style: TextStyle(color: red),
                    ),
                  ),
                ),
                loading == false
                    ? Container()
                    : const SpinKitCircle(
                        color: red,
                      )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
