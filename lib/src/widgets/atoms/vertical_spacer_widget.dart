import 'package:flutter/material.dart';

/// A box with a specified height factor.
final class VeticalSpacerWidget extends StatelessWidget {
  final int _factor;

  const VeticalSpacerWidget.x1({super.key}) : _factor = 1;
  const VeticalSpacerWidget.x2({super.key}) : _factor = 2;
  const VeticalSpacerWidget.x3({super.key}) : _factor = 3;
  const VeticalSpacerWidget.x4({super.key}) : _factor = 4;

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: (5 * _factor).toDouble());
  }
}
