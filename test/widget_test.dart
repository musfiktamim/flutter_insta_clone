import 'package:flutter_test/flutter_test.dart';
import 'package:insta_clone_fixed/myapp.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(Myapp());
  });
}
