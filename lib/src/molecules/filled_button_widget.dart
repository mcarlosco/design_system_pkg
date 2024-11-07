import 'package:flutter/material.dart';

/// A Material Design filled button with a text.
class FilledButtonWidget extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;

  /// Create a tonal variant of FilledButton.
  const FilledButtonWidget.tonal({
    super.key,
    this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return FilledButton.tonal(
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
