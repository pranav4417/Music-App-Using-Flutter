import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'core/theme.dart';
import 'screens/home_screen.dart';
import 'services/audio_service.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => AudioService(),
      child: const EchoStreamApp(),
    ),
  );
}

class EchoStreamApp extends StatelessWidget {
  const EchoStreamApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EchoStream',
      theme: walkmanTheme,
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}