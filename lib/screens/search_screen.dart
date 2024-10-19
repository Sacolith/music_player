import 'package:flutter/material.dart';
import 'package:music_player/widgets/custom_text.dart';

class SearchScreen extends StatelessWidget{
  const SearchScreen({super.key});

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const CustomText(),
        backgroundColor: Colors.transparent,
      ),
      body:const Center(
        child: Text('Search'),),
    );
  }
}