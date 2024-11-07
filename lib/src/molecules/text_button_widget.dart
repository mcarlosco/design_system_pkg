import 'package:flutter/material.dart';

class TextButtonWidget extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;

  final Color? _textColor;

  const TextButtonWidget.dangerous({
    super.key,
    this.onPressed,
    required this.text,
  }) : _textColor = Colors.red;

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
