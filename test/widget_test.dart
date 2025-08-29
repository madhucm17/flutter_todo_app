import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_todo/main.dart'; // make sure this path matches your project

void main() {
  testWidgets('Basic widget smoke test', (WidgetTester tester) async {
    // Build your app
    await tester.pumpWidget(const TodoApp());

    // Wait for frames to settle
    await tester.pumpAndSettle();

    // Dummy check: verify that the app builds without errors
    expect(tester.takeException(), isNull);
  });
}
