import 'package:design_system_pkg/src/utils/feedback_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('showSnackBar', (tester) async {
    const message = 'Message';

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Builder(
            builder: (context) => GestureDetector(
              onTap: () {
                showSnackBar(context, message);
              },
            ),
          ),
        ),
      ),
    );

    final gestureDetectorFinder = find.byType(GestureDetector);
    final snackBarFinder = find.widgetWithText(SnackBar, message);

    expect(gestureDetectorFinder, findsOneWidget);

    await tester.tap(gestureDetectorFinder);

    await tester.pump();

    expect(snackBarFinder, findsOneWidget);
  });

  testWidgets('showAlertDialog', (tester) async {
    const title = 'Title';
    const content = 'Content';

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Builder(
              builder: (context) => GestureDetector(
                    onTap: () {
                      showAlertDialog(
                        context,
                        title: title,
                        content: content,
                      ).ignore();
                    },
                  )),
        ),
      ),
    );

    final gestureDetectorFinder = find.byType(GestureDetector);
    final alertDialogFinder = find.widgetWithText(AlertDialog, title);

    expect(gestureDetectorFinder, findsOneWidget);

    await tester.tap(gestureDetectorFinder);

    await tester.pump();

    expect(alertDialogFinder, findsOneWidget);
  });
}
