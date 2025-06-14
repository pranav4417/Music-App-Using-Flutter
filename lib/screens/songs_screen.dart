import 'package:flutter/material.dart';

class SongsScreen extends StatelessWidget {
  const SongsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Songs'),
        backgroundColor: Colors.grey[800],
      ),
      body: const Center(
        child: Text(
          'Songs Screen - Coming Soon',
          style: TextStyle(
            fontFamily: 'OCRA',
            color: Colors.white70,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}