import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class FirebaseAuthentication {
  String email;
  String password;
  String? rePassword;
  FirebaseAuthentication(
      {required this.email, required this.password, this.rePassword});

  Future<String?> createNewUser() async {
    try {
      if (password.length < 8) {
        return 'password lenght is lesser than 8';
      } else if (password != rePassword) {
        return 'password and repassword must be the same';
      } else if (email.contains('@') == false) {
        return 'email format wrong ';
      } else {
        try {
          var user = FirebaseAuth.instance;
          await user.createUserWithEmailAndPassword(
              email: email, password: password);
          return 'account created';
        } on FirebaseAuthException catch (e) {
          return e.code;
        }
      }
    } catch (e) {
      return e.toString();
    }
  }

  Future<String?> loginUser() async {
    try {
      if (password.length < 8) {
        return 'password lenght should be at least 8';
      } else if (email.contains('@') == false) {
        return 'Unknown email format';
      } else {
        try {
          var loginUser = FirebaseAuth.instance;
          await loginUser.signInWithEmailAndPassword(
              email: email, password: password);
          return 'user login';
        } on FirebaseAuthException catch (e) {
          return e.code.toString();
        }
      }
    } catch (e) {
      return e.toString();
    }
  }

  Future<String?> logoutUser() async {
    try {
      var user = FirebaseAuth.instance;
      await user.signOut();
      return 'user logged out successfuly';
    } on FirebaseAuthException catch (e) {
      return e.code.toString();
    }
  }
}
