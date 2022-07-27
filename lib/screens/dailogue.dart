import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void showErrorDialogue({
  required BuildContext context,
  required String errorMessage,
}) async {
  await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Something went wrong !!!'),
          content: Text(errorMessage),
          actions: [
            FlatButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Exit'),
            )
          ],
        );
      });
}
