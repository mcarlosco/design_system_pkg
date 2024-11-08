import 'package:flutter/material.dart';

/// A Material Design "Text Button" with a text.
class TextButtonWidget extends StatelessWidget {
  final VoidCallback? onPressed;
  final Icon? icon;
  final String text;

  final Color? _textColor;

  /// Create a [TextButton] with a red text.
  const TextButtonWidget.dangerous({
    super.key,
    this.onPressed,
    this.icon,
    required this.text,
  }) : _textColor = Colors.red;

  /// Create a [TextButton] with a text.
  const TextButtonWidget.safe({
    super.key,
    this.onPressed,
    this.icon,
    required this.text,
  }) : _textColor = null;

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: onPressed,
      icon: icon,
      label: Text(
        text,
        style: TextStyle(
          color: _textColor,
        ),
      ),
    );
  }
}
