import 'package:flutter/material.dart';
import 'package:music_player/widgets/custom_text.dart';

class GenreScreen extends StatelessWidget{
  const GenreScreen({super.key});

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const CustomText(
        heading: 'Genre',
      ),
        
      ),
      body: Expanded(
        child: Column(
               children: [
                // ListView.builder(
                //   itemCount: ,
                //   itemBuilder: );
               ],
        )
        ),
    );
  }
}