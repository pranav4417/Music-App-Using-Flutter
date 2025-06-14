import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';
import '../models/song_model.dart';

class AudioService with ChangeNotifier {
  final AudioPlayer _player = AudioPlayer();
  Song? _currentSong;
  bool _isPlaying = false;
  final YoutubeExplode _youtube = YoutubeExplode();

  Song? get currentSong => _currentSong;
  bool get isPlaying => _isPlaying;

  Future<void> playSong(Song song) async {
    try {
      _currentSong = song;
      if (song.isLocal) {
        await _player.setFilePath(song.source);
      } else {
        final video = await _youtube.videos.get(song.source);
        final streamInfo = await _youtube.videos.streamsClient.getManifest(video.id).then(
              (manifest) => manifest.audioOnly.withHighestBitrate(),
            );
        await _player.setUrl(streamInfo.url.toString());
      }
      await _player.play();
      _isPlaying = true;
      notifyListeners();
    } catch (e) {
      print('Error playing song: $e');
    }
  }

  Future<void> pauseSong() async {
    await _player.pause();
    _isPlaying = false;
    notifyListeners();
  }

  Future<void> stopSong() async {
    await _player.stop();
    _isPlaying = false;
    _currentSong = null;
    notifyListeners();
  }

  void setEqualizerSettings({
    double bass = 0.0,
    double mid = 0.0,
    double treble = 0.0,
  }) {
    print('Equalizer: Bass=$bass, Mid=$mid, Treble=$treble');
    notifyListeners();
  }

  @override
  void dispose() {
    _player.dispose();
    _youtube.close();
    super.dispose();
  }
}