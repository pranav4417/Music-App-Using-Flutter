import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../services/audio_service.dart';

class CustomEqualizer extends StatefulWidget {
  const CustomEqualizer({super.key});

  @override
  State<CustomEqualizer> createState() => _CustomEqualizerState();
}

class _CustomEqualizerState extends State<CustomEqualizer> {
  double bass = 0.0;
  double mid = 0.0;
  double treble = 0.0;
  String selectedPreset = 'Normal';

  void applyPreset(String preset) {
    setState(() {
      selectedPreset = preset;
      switch (preset) {
        case 'Normal':
          bass = 0.0;
          mid = 0.0;
          treble = 0.0;
          break;
        case 'Bass Heavy':
          bass = 8.0;
          mid = -2.0;
          treble = -4.0;
          break;
        case 'Vocal Boost':
          bass = -2.0;
          mid = 6.0;
          treble = 2.0;
          break;
        case 'Treble Boost':
          bass = -4.0;
          mid = -2.0;
          treble = 8.0;
          break;
      }
      Provider.of<AudioService>(context, listen: false)
          .setEqualizerSettings(bass: bass, mid: mid, treble: treble);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      color: Colors.grey[900],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Equalizer',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 16),
          const Text('Bass Boost', style: TextStyle(color: Colors.white70)),
          Slider(
            value: bass,
            min: -10.0,
            max: 10.0,
            onChanged: (value) {
              setState(() {
                bass = value;
                Provider.of<AudioService>(context, listen: false)
                    .setEqualizerSettings(bass: bass, mid: mid, treble: treble);
              });
            },
          ),
          const Text('Midrange', style: TextStyle(color: Colors.white70)),
          Slider(
            value: mid,
            min: -10.0,
            max: 10.0,
            onChanged: (value) {
              setState(() {
                mid = value;
                Provider.of<AudioService>(context, listen: false)
                    .setEqualizerSettings(bass: bass, mid: mid, treble: treble);
              });
            },
          ),
          const Text('Treble', style: TextStyle(color: Colors.white70)),
          Slider(
            value: treble,
            min: -10.0,
            max: 10.0,
            onChanged: (value) {
              setState(() {
                treble = value;
                Provider.of<AudioService>(context, listen: false)
                    .setEqualizerSettings(bass: bass, mid: mid, treble: treble);
              });
            },
          ),
          const SizedBox(height: 16),
          DropdownButton<String>(
            value: selectedPreset,
            items: ['Normal', 'Bass Heavy', 'Vocal Boost', 'Treble Boost']
                .map((preset) => DropdownMenuItem(
                      value: preset,
                      child: Text(preset, style: const TextStyle(color: Colors.white70)),
                    ))
                .toList(),
            onChanged: (value) {
              if (value != null) {
                applyPreset(value);
              }
            },
          ),
        ],
      ),
    );
  }
}