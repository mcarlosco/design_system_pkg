import 'package:design_system_pkg/design_system_pkg.dart';
import 'package:flutter/material.dart';

class Page extends StatefulWidget {
  const Page({super.key});

  @override
  State<Page> createState() => _PageState();
}

class _PageState extends State<Page> {
  late int _total;

  @override
  void initState() {
    super.initState();
    _total = 0;
  }

  @override
  Widget build(BuildContext context) {
    return ScreenWidget(
      title: 'Dash Lovers',
      primaryActionButton: _total > 0
          ? FloatingActionButton(
              onPressed: () {
                showSnackBar(context, 'It was a gift for you (total = \$0)');
                Navigator.of(context).pop<void>();
              },
              child: const Icon(Icons.attach_money_rounded),
            )
          : null,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Total',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text('\$${_total.toString()}'),
              ],
            ),
            const Divider(),
            Expanded(
              child: ListView(
                children: [
                  CardWidget.outlined(
                    headline: 'Dash 1.0',
                    subhead: '\$19',
                    supportingText:
                        'The people have spoken, so Dash is now the mascot for Flutter and Dart.',
                    supportingImage: const ImageWidget.network(
                      'https://docs.flutter.dev/assets/images/dash/dash-1.0.jpg',
                    ),
                    buttonText: 'Want it',
                    onButtonPressed: () {
                      setState(() {
                        _total += 19;
                      });

                      showSnackBar(context, 'It\'s almost yours!');
                    },
                  ),
                  CardWidget.outlined(
                    headline: 'Dash 2.0 and 2.1',
                    subhead: 'Today: \$33 • Normal: \$39',
                    supportingText:
                        'Since the creation of Dash 1.0, we\'ve made two more versions. '
                        'Marketing slightly changed the Dart and Flutter color scheme after Dash 1.0 was created, '
                        'so Dash 2.0 reflects the updated scheme (which removed the green color). '
                        'Dash 2.1 is a smaller size and has a few more color tweaks. '
                        'The smaller size is easier to ship, and fits better in a claw machine!',
                    supportingImage: const ImageWidget.network(
                      'https://docs.flutter.dev/assets/images/dash/BigDashAndLittleDash.png',
                    ),
                    buttonText: 'Want them',
                    onButtonPressed: () {
                      setState(() {
                        _total += 33;
                      });

                      showSnackBar(context, 'They\'re almost yours!');
                    },
                  ),
                  CardWidget.outlined(
                    headline: 'Mega-Dash',
                    subhead: 'SOLD OUT',
                    supportingText:
                        'Mega-Dash made her first appearance at the Flutter Interact event in Brooklyn, New York, '
                        'on December 11, 2019.',
                    supportingImage: const ImageWidget.network(
                      'https://docs.flutter.dev/assets/images/dash/MegaDashChilling.png',
                    ),
                    buttonText: 'Can\'t wait!',
                    onButtonPressed: () {
                      showSnackBar(context, 'It\'ll be available soon');
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
