// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_todo/main.dart'; // make sure this path matches your project

void main() {
  testWidgets('Basic widget smoke test', (WidgetTester tester) async {
    // Build your app
    await tester.pumpWidget(const TodoApp());

    // Wait for any pending frames
    await tester.pumpAndSettle();

    // Example check: verify that some text exists in your app
    // Replace 'Add your first task' with actual text from your app
    expect(find.text('Add your first task'), findsOneWidget);
  });
}
