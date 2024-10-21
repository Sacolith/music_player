import 'package:flutter/material.dart';
import 'package:music_player/widgets/layout/custom_layout.dart';
import 'package:music_player/widgets/text/custom_text.dart';
import 'package:music_player/widgets/screens/playlist.dart';

class PlaylistsScreen extends StatelessWidget{
  const PlaylistsScreen({super.key});

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar( title: const CustomText(heading: 'Playlists',),
      ),
      body: const CustomLayout(child: Playlist(),),
    );
  }
}