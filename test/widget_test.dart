import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:echostream/main.dart';
import 'package:echostream/services/audio_service.dart';

void main() {
  testWidgets('EchoStreamApp renders HomeScreen', (WidgetTester tester) async {
    await tester.pumpWidget(
      ChangeNotifierProvider(
        create: (_) => AudioService(),
        child: const EchoStreamApp(),
      ),
    );

    expect(find.text('EchoStream'), findsOneWidget);
    expect(find.byType(AppBar), findsOneWidget);
  });
}
