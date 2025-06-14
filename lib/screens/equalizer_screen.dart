import 'package:flutter/material.dart';
import '../widgets/custom_equalizer.dart';

class EqualizerScreen extends StatelessWidget {
  const EqualizerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Equalizer'),
        backgroundColor: Colors.grey[800],
      ),
      body: const CustomEqualizer(),
    );
  }
}