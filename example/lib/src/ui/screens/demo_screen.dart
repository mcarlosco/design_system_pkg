import 'dart:async';

import 'package:design_system_pkg/design_system_pkg.dart';
import 'package:flutter/material.dart';

import '../consts.dart';

class DemoScreen extends StatefulWidget {
  const DemoScreen({super.key});

  @override
  State<DemoScreen> createState() => _DemoScreenState();
}

class _DemoScreenState extends State<DemoScreen> {
  PreviewsConst? _preview;

  @override
  Widget build(BuildContext context) {
    return ScreenWidget(
      title: 'DS Package Demo',
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: DropdownButtonFormField(
                  value: _preview,
                  hint: const Text('Previews'),
                  items: PreviewsConst.values
                      .map((view) => DropdownMenuItem<PreviewsConst>(
                            value: view,
                            child: Text(view.name),
                          ))
                      .toList(),
                  onChanged: (preview) {
                    setState(() {
                      _preview = preview;
                    });
                  },
                ),
              ),
              switch (_preview) {
                PreviewsConst.atoms => const Column(
                    children: [
                      SpacerWidget.x4(),
                      Text('Image'),
                      Divider(),
                      ImageWidget.network(
                          'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif'),
                      SpacerWidget.x4(),
                      Text('Spacer'),
                      Divider(),
                      SpacerWidget.x1(),
                      Text('×1'),
                      SpacerWidget.x2(),
                      Text('×2'),
                      SpacerWidget.x3(),
                      Text('×3'),
                      SpacerWidget.x4(),
                      Text('×4'),
                    ],
                  ),
                PreviewsConst.molecules => Column(
                    children: [
                      const SpacerWidget.x4(),
                      const Text('Filled Button'),
                      const Divider(),
                      FilledButtonWidget.tonal(
                        text: 'Action',
                        onPressed: () {},
                      ),
                      const SpacerWidget.x4(),
                      const Text('Text Button'),
                      const Divider(),
                      TextButtonWidget.dangerous(
                        icon: const Icon(
                          Icons.dangerous_rounded,
                          color: Colors.red,
                        ),
                        text: 'Dangerous action',
                        onPressed: () {},
                      ),
                      TextButtonWidget.safe(
                        icon: const Icon(Icons.safety_check_rounded),
                        text: 'Safe action',
                        onPressed: () {},
                      ),
                    ],
                  ),
                PreviewsConst.organisms => Column(
                    children: [
                      const SpacerWidget.x4(),
                      const Text('App Bar'),
                      const Divider(),
                      const AppBarWidget(
                        title: 'Multiplatform App',
                      ),
                      const SpacerWidget.x4(),
                      const Text('Card'),
                      const Divider(),
                      CardWidget.outlined(
                        headline: 'Who is Dash?',
                        subhead: 'Flutter reference',
                        supportingText:
                            'Dash is the mascot for the Dart language and the Flutter framework.',
                        supportingImage: const ImageWidget.network(
                            'https://storage.googleapis.com/cms-storage-bucket/780e0e64d323aad2cdd5.png'),
                        buttonText: 'Hi, Dash!',
                        onButtonPressed: () {
                          showSnackBar(context, 'Hi, there!');
                        },
                      ),
                    ],
                  ),
                PreviewsConst.templates => Column(
                    children: [
                      const SpacerWidget.x4(),
                      const Text('Screen'),
                      const Divider(),
                      SizedBox(
                        height: 500,
                        child: ScreenWidget(
                          title: 'Multiplanet App',
                          primaryActionButton: FloatingActionButton(
                            onPressed: () {
                              showSnackBar(context, 'Hello, 🪐!');
                            },
                            child: const Icon(Icons.satellite_alt_rounded),
                          ),
                          child: const Center(
                            child: Text('Hello, 🌎!'),
                          ),
                        ),
                      ),
                      const Divider(),
                    ],
                  ),
                PreviewsConst.pages => TextButtonWidget.safe(
                    icon: const Icon(Icons.arrow_forward_rounded),
                    text: 'Go to a page you will love',
                    onPressed: () {
                      unawaited(
                        Navigator.of(context).pushNamed(
                          '/dash_lovers',
                          arguments: const [
                            ProductModel(
                              title: 'Dash 1.0',
                              price: 19,
                              description:
                                  'The people have spoken, so Dash is now the mascot for Flutter and Dart.',
                              image:
                                  'https://docs.flutter.dev/assets/images/dash/dash-1.0.jpg',
                            ),
                            ProductModel(
                              title: 'Dash 2.0 and 2.1',
                              price: 33,
                              description:
                                  'Since the creation of Dash 1.0, we\'ve made two more versions. '
                                  'Marketing slightly changed the Dart and Flutter color scheme after Dash 1.0 was created, '
                                  'so Dash 2.0 reflects the updated scheme (which removed the green color). '
                                  'Dash 2.1 is a smaller size and has a few more color tweaks. '
                                  'The smaller size is easier to ship, and fits better in a claw machine!',
                              image:
                                  'https://docs.flutter.dev/assets/images/dash/BigDashAndLittleDash.png',
                            ),
                            ProductModel(
                              title: 'Mega-Dash',
                              price: 99,
                              description:
                                  'Mega-Dash made her first appearance at the Flutter Interact event in Brooklyn, New York, '
                                  'on December 11, 2019.',
                              image:
                                  'https://docs.flutter.dev/assets/images/dash/MegaDashChilling.png',
                            ),
                          ],
                        ).then((total) {
                          if (total is double && context.mounted) {
                            showSnackBar(context,
                                'This is a gift for you: total = \$0.0');
                          }
                        }),
                      );
                    },
                  ),
                _ => const Text('No preview selected'),
              }
            ],
          ),
        ),
      ),
    );
  }
}
