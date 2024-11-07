import 'package:flutter/material.dart';

/// A Material Design "Text Button" with a text.
class TextButtonWidget extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;

  final Color? _textColor;

  /// Create a [TextButton] with a red text.
  const TextButtonWidget.dangerous({
    super.key,
    this.onPressed,
    required this.text,
  }) : _textColor = Colors.red;

  /// Create a [TextButton] with a text.
  const TextButtonWidget.safe({
    super.key,
    this.onPressed,
    required this.text,
  }) : _textColor = null;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          color: _textColor,
        ),
      ),
    );
  }
}
