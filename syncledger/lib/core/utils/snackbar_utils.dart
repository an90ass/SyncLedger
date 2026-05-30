import 'package:flutter/material.dart';

void showClosableSnackBar(
  BuildContext context, {
  required Widget content,
  Color? backgroundColor,
  Duration duration = const Duration(seconds: 5),
  SnackBarBehavior behavior = SnackBarBehavior.fixed,
  String actionLabel = 'Close',
}) {
  final messenger = ScaffoldMessenger.of(context);
  messenger.hideCurrentSnackBar();
  messenger.showSnackBar(
    SnackBar(
      content: content,
      backgroundColor: backgroundColor,
      duration: duration,
      behavior: behavior,
      action: SnackBarAction(
        label: actionLabel,
        textColor: Colors.white,
        onPressed: messenger.hideCurrentSnackBar,
      ),
    ),
  );
}
