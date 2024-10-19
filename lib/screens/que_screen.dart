import 'package:flutter/material.dart';
import 'package:music_player/widgets/custom_text.dart';
import 'package:music_player/widgets/default_screen.dart';

class QueScreen  extends StatelessWidget{
  const QueScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const CustomText(
        heading: 'Que',
      ),
        ),
      body: const DefaultScreen()
    );
  }
}