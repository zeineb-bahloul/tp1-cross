// This is a basic Flutter widget test for the Waiting Room app.
import 'package:flutter_test/flutter_test.dart';
import 'package:waiting_room_app/main.dart';

void main() {
  testWidgets('App displays Waiting Room title', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that the app title is displayed.
    expect(find.text('Waiting Room'), findsOneWidget);

    // Verify the WaitingRoomCard is shown with 'John Doe'.
    expect(find.text('Hello,'), findsOneWidget);
    expect(find.text('John Doe'), findsOneWidget);
  });
}
