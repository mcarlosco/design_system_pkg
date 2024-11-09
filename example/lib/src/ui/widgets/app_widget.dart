import 'package:design_system_pkg/design_system_pkg.dart';
import 'package:flutter/material.dart' hide Page;
import 'package:google_fonts/google_fonts.dart';

import '../screens.dart';

final class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Design System Package Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(1, 8, 90, 157),
        ),
        useMaterial3: true,
        textTheme: GoogleFonts.lexendTextTheme(),
      ),
      routes: {
        '/dash_lovers': (context) => ShoppingPage(
              title: 'Dash Lovers',
              products: ModalRoute.of(context)!.settings.arguments
                  as List<ProductModel>,
            ),
      },
      home: const DemoScreen(),
    );
  }
}
