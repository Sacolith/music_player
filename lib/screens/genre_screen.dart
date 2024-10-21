import 'package:flutter/material.dart';
import 'package:music_player/widgets/layout/custom_layout.dart';
import 'package:music_player/widgets/text/custom_text.dart';
import 'package:music_player/widgets/screens/genre.dart';

class GenreScreen extends StatelessWidget{
  const GenreScreen({super.key});

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const CustomText(
        heading: 'Genre',
      ),
      ),
      body: const CustomLayout(child: Genre(),),
    );
  }
}