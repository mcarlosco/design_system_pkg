import 'package:flutter/material.dart';

/// A widget that displays an image.
final class ImageWidget extends StatelessWidget {
  final String name;

  final bool _local;

  /// Creates a widget that displays an [ImageStream] obtained from a local path.
  const ImageWidget.asset(
    this.name, {
    super.key,
  }) : _local = true;

  /// Creates a widget that displays an [ImageStream] obtained from the network.
  const ImageWidget.network(
    this.name, {
    super.key,
  }) : _local = false;

  @override
  Widget build(BuildContext context) {
    return _local ? Image.asset(name) : Image.network(name);
  }
}
