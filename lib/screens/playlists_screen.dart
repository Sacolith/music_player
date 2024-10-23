import 'package:flutter/material.dart';
import 'package:music_player/widgets/layout/custom_layout.dart';
import 'package:music_player/widgets/screens/playsscreen.dart';
import 'package:music_player/widgets/text/custom_text.dart';

class Playlistscreen extends StatelessWidget{
  const Playlistscreen({super.key});

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar( title: const CustomText(heading: 'Playlists',),
      ),
      body: const CustomLayout(child:PlaysScreen()),
    );
  }
}