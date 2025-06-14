import 'package:flutter/material.dart';

class FoldersScreen extends StatelessWidget {
  const FoldersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Folders'),
        backgroundColor: Colors.grey[800],
      ),
      body: const Center(
        child: Text(
          'Folders Screen - Coming Soon',
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