import 'package:flutter/material.dart';

final class ImageWidget extends StatelessWidget {
  final String name;

  final bool _local;

  const ImageWidget.asset(
    this.name, {
    super.key,
  }) : _local = true;

  const ImageWidget.network(
    this.name, {
    super.key,
  }) : _local = false;

  @override
  Widget build(BuildContext context) {
    return _local ? Image.asset(name) : Image.network(name);
  }
}
