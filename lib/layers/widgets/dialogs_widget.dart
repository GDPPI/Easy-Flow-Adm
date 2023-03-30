import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:stylish_dialog/stylish_dialog.dart';

class Dialogs {
  static StylishDialog? _dialogError;

  static Dialog? loading(context) {
    showDialog(
      context: context,
      builder: (context) => Dialog(
        backgroundColor: Colors.transparent,
        elevation: 0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 40,
              height: 40,
              child: Platform.isIOS
                  ? CupertinoActivityIndicator(
                      radius: 20, color: Theme.of(context).colorScheme.primary)
                  : CircularProgressIndicator(
                      color: Theme.of(context).colorScheme.primary),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Aguarde...',
              style: TextStyle(
                  fontFamily: 'poppins',
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }

  static StylishDialog error(context,
      {required String title, required String message}) {
    _dialogError ??= StylishDialog(
      context: context,
      alertType: StylishDialogType.ERROR,
      title: Text(title),
      content: Text(message),
    );
    return _dialogError!;
  }
}
