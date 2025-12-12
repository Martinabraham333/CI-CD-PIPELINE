
import 'package:counter_app/counter_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Initial count must be 0', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: CounterScreen())); // load widgete
    expect(find.text("Count : 0"), findsOneWidget); // Check if count became 0
  });

  testWidgets('Increment button increases count', (tester) async {
    await tester.pumpWidget(MaterialApp(home: CounterScreen()));
    await tester.tap(find.byIcon(Icons.add)); // it tap add icon
    await tester.pump(); // after taping and incrementing count to one , it refresh screen
    expect(find.text("Count : 1"), findsOneWidget); // Check if count became 1
  });

  testWidgets("Decrement button decreases count", (tester) async {
    await tester.pumpWidget(const MaterialApp(home: CounterScreen()));
    await tester.tap(find.byIcon(Icons.remove));
    await tester.tap(find.byIcon(Icons.remove));
    await tester.pump();
    expect(find.text("Count : -1"), findsOneWidget);
  });
}
