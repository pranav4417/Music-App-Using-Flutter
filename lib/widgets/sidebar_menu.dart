import 'package:flutter/material.dart';
import '../screens/albums_screen.dart';
import '../screens/songs_screen.dart';
import '../screens/folders_screen.dart';
import '../screens/equalizer_screen.dart';

class SidebarMenu extends StatelessWidget {
  const SidebarMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey[900],
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.grey[800],
            ),
            child: const Text(
              'EchoStream Menu',
              style: TextStyle(
                fontFamily: 'OCRA',
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            title: const Text(
              'Albums',
              style: TextStyle(
                fontFamily: 'OCRA',
                color: Colors.white70,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const AlbumsScreen()),
              );
            },
          ),
          ListTile(
            title: const Text(
              'Songs',
              style: TextStyle(
                fontFamily: 'OCRA',
                color: Colors.white70,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const SongsScreen()),
              );
            },
          ),
          ListTile(
            title: const Text(
              'Folders',
              style: TextStyle(
                fontFamily: 'OCRA',
                color: Colors.white70,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const FoldersScreen()),
              );
            },
          ),
          ListTile(
            title: const Text(
              'Equalizer',
              style: TextStyle(
                fontFamily: 'OCRA',
                color: Colors.white70,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const EqualizerScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}