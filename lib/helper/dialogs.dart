import 'package:flutter/material.dart';

class Dialogs {
  static void showSnackbar(BuildContext context, String msg) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(msg),
      backgroundColor: Colors.blue.withOpacity(0.8),
      behavior: SnackBarBehavior.floating,
      duration: Duration(seconds: 1), // Set the duration to 2 seconds
    ));
  }

  static void showProgressBar(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => Center(child: CircularProgressIndicator()));
  }
}
