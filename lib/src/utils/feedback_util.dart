import 'package:flutter/material.dart';

/// Removes the current [SnackBar] by running its normal exit animation,
/// and then shows a [SnackBar] across all registered [Scaffold]s.
ScaffoldMessengerState showSnackBar(BuildContext context, String message) {
  return ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(SnackBar(content: Text(message)));
}

/// Displays a Material dialog above the current contents of the app, with
/// Material entrance and exit animations, modal barrier color, and modal
/// barrier behavior (dialog is dismissible with a tap on the barrier).
Future<T?> showAlertDialog<T>(
  BuildContext context, {
  required String title,
  required String content,
  String? buttonText,
  VoidCallback? onButtonPressed,
}) {
  return showDialog<T>(
    context: context,
    builder: (_) => AlertDialog(
      title: Text(title),
      content: Text(content),
      actions: [
        if (buttonText != null)
          TextButton(
            onPressed: onButtonPressed ?? Navigator.of(context).pop<void>,
            child: Text(buttonText),
          ),
      ],
    ),
  );
}
