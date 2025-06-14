import 'package:flutter/material.dart';

class AlbumsScreen extends StatelessWidget {
  const AlbumsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Albums'),
        backgroundColor: Colors.grey[800],
      ),
      body: const Center(
        child: Text(
          'Albums Screen - Coming Soon',
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