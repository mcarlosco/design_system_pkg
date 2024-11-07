import 'package:flutter/material.dart';

/// Shows a [SnackBar] across all registered [Scaffold]s.
void showSnackBar(BuildContext context, String message) =>
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
