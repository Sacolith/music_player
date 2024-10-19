import 'package:flutter/material.dart';
import 'package:music_player/widgets/custom_text.dart';

class PlaylistsScreen extends StatelessWidget{
  const PlaylistsScreen({super.key});

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar( title: const CustomText(),
        backgroundColor: Colors.transparent,
      ),
      body: const Center(child: Text('Playlists'),),
    );
  }
}