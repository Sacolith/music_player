import 'package:flutter/material.dart';

class PlaylistsScreen extends StatelessWidget{
  const PlaylistsScreen({super.key});

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: const Center(child: Text('Playlists'),),
    );
  }
}