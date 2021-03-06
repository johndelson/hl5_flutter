import 'package:flutter/material.dart';

Future<dynamic> showCustomDialog(BuildContext context, Widget child,
    {bool barrierDismissible = false}) {
  return showDialog(
    barrierDismissible: barrierDismissible,
    builder: (context) {
      return Dialog(
        child: child,
      );
    },
    context: context,
  );
}
