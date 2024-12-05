import 'package:flutter/material.dart';

/// A box with a specified height factor.
final class VerticalSpacerWidget extends StatelessWidget {
  final int _factor;

  const VerticalSpacerWidget.x1({super.key}) : _factor = 1;
  const VerticalSpacerWidget.x2({super.key}) : _factor = 2;
  const VerticalSpacerWidget.x3({super.key}) : _factor = 3;
  const VerticalSpacerWidget.x4({super.key}) : _factor = 4;

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: (5 * _factor).toDouble());
  }
}
