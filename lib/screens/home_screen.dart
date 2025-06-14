import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../services/audio_service.dart';
import '../widgets/sidebar_menu.dart';
import 'now_playing_screen.dart';
import '../models/song_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('EchoStream'),
        backgroundColor: Colors.grey[800],
      ),
      drawer: const SidebarMenu(),
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
              ElevatedButton(
                onPressed: () {
                  final song = Song(
                    title: 'Lo-Fi Track',
                    artist: 'Unknown',
                    source: 'assets/audio/lofi.mp3',
                    isLocal: true,
                  );
                  Provider.of<AudioService>(context, listen: false).playSong(song);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const NowPlayingScreen()),
                  );
                },
                child: const Text('Play Local Song'),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  final song = Song(
                    title: 'Sample Track',
                    artist: 'YouTube Artist',
                    source: 'https://www.youtube.com/watch?v=dQw4w9WgXcQ',
                    isLocal: false,
                  );
                  Provider.of<AudioService>(context, listen: false).playSong(song);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const NowPlayingScreen()),
                  );
                },
                child: const Text('Play YouTube Song'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}