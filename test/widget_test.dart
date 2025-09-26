import 'package:flutter_test/flutter_test.dart';
import 'package:insta_clone_fixed/myapp.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Wrap the test in mockNetworkImagesFor
    await tester.pumpWidget(
      Myapp(),
    ); // <-- make sure class name matches exactly

//     // Wait for all async widgets to settle
    //     await tester.pumpAndSettle();
    //
    //     // Verify initial counter is 0
    //     expect(find.text('0'), findsOneWidget);
    //
    //     // Tap the '+' icon
    //     await tester.tap(find.byIcon(CupertinoIcons.add));
    //     await tester.pump();
    //
    //     // Verify counter incremented
    //     expect(find.text('1'), findsOneWidget);
  });
}
