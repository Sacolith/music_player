import 'package:flutter/material.dart';
import 'package:music_player/widgets/layout/custom_layout.dart';
import 'package:music_player/widgets/text/custom_text.dart';
import 'package:music_player/widgets/screens/que.dart';

class QueScreen  extends StatelessWidget{
  const QueScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const CustomText(
        heading: 'Que',
      ),
        ),
      body: const CustomLayout(child: Que(),),
    );
  }
}