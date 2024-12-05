import 'package:flutter/material.dart';

/// A box with a specified width factor.
final class HorizontalSpacerWidget extends StatelessWidget {
  final int _factor;

  const HorizontalSpacerWidget.x1({super.key}) : _factor = 1;
  const HorizontalSpacerWidget.x2({super.key}) : _factor = 2;
  const HorizontalSpacerWidget.x3({super.key}) : _factor = 3;
  const HorizontalSpacerWidget.x4({super.key}) : _factor = 4;

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: (5 * _factor).toDouble());
  }
}
