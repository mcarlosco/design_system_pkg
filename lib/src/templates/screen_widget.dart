import 'package:flutter/material.dart';

import '../organisms.dart';

final class ScreenWidget extends StatelessWidget {
  final String title;
  final Widget child;
  final Widget? primaryActionButton;

  const ScreenWidget({
    super.key,
    required this.title,
    required this.child,
    this.primaryActionButton,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: title,
      ),
      body: child,
      floatingActionButton: primaryActionButton,
    );
  }
}
