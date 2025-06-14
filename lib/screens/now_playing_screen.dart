import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../services/audio_service.dart';

class NowPlayingScreen extends StatelessWidget {
  const NowPlayingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final audioService = Provider.of<AudioService>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Now Playing'),
        backgroundColor: Colors.grey[800],
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/walkman_background.jpg'),
            fit: BoxFit.cover,
            opacity: 0.3,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                audioService.currentSong?.title ?? 'No Song Playing',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Text(
                audioService.currentSong?.artist ?? '',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(
                      audioService.isPlaying ? Icons.pause : Icons.play_arrow,
                      color: Colors.white,
                      size: 48,
                    ),
                    onPressed: () {
                      if (audioService.isPlaying) {
                        audioService.pauseSong();
                      } else if (audioService.currentSong != null) {
                        audioService.playSong(audioService.currentSong!);
                      }
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.stop, color: Colors.white, size: 48),
                    onPressed: () {
                      audioService.stopSong();
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}