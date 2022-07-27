import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:travel_app/authentication/firebase_authentication.dart';
import 'package:travel_app/resources/colors.dart';
import 'package:travel_app/resources/routes.dart';
import 'package:travel_app/screens/dailogue.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController? email;
  TextEditingController? password;
  TextEditingController? rePasswword;
  var sizedBox = const SizedBox(
    height: 20,
  );
  @override
  void initState() {
    email = TextEditingController();
    password = TextEditingController();
    rePasswword = TextEditingController();
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    email?.dispose();
    password?.dispose();
    rePasswword?.dispose();
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
              const Text('Create new account'),
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
                decoration: InputDecoration(
                  hintText: 'at lease letter',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
              sizedBox,
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text('Confirm password'),
              ),
              TextField(
                controller: rePasswword,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
              sizedBox,
              Center(
                child: GestureDetector(
                  onTap: () async {
                    FirebaseAuthentication firebaseAuthentication =
                        FirebaseAuthentication(
                      email: email!.text,
                      password: password!.text,
                      rePassword: rePasswword!.text,
                    );
                    String? createUser =
                        await firebaseAuthentication.createNewUser();
                    if (createUser != 'account created') {
                      showErrorDialogue(
                          context: context, errorMessage: createUser!);
                    } else {
                      Navigator.popAndPushNamed(context, login);
                    }
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
                        'Sign up',
                        style: TextStyle(
                          color: white,
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}
