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
                        text: 'Dangerous action',
                        onPressed: () {},
                      ),
                      TextButtonWidget.safe(
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
                        title: 'Title',
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
                PreviewsConst.templates => const Column(
                    children: [
                      SpacerWidget.x4(),
                      Text('Screen'),
                      Divider(),
                      Text(
                        'This demo screen is a sample of that use',
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ],
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
