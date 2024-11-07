import 'package:flutter/material.dart';

class FilledButtonWidget extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;

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
