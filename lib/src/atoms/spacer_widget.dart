import 'package:flutter/material.dart';

/// A box with a specified height factor.
final class SpacerWidget extends StatelessWidget {
  final int _factor;

  const SpacerWidget.x1({super.key}) : _factor = 1;
  const SpacerWidget.x2({super.key}) : _factor = 2;
  const SpacerWidget.x3({super.key}) : _factor = 3;
  const SpacerWidget.x4({super.key}) : _factor = 4;

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: (5 * _factor).toDouble());
  }
}
